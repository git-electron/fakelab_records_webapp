import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/clickable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';

import '../domain/images_viewer_bloc.dart';

enum ImageSource { asset, network }

@RoutePage()
class ImagesViewerScreen extends StatefulWidget {
  const ImagesViewerScreen({
    required this.images,
    required this.initialIndex,
    this.source = ImageSource.network,
    super.key,
  });

  final int initialIndex;
  final List<String> images;

  final ImageSource source;

  @override
  State<ImagesViewerScreen> createState() => _ImagesViewerScreenState();
}

class _ImagesViewerScreenState extends State<ImagesViewerScreen> {
  static const int disposeLimit = 100;

  late BuildContext blocContext;
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: widget.initialIndex,
      viewportFraction: 1.02,
    );

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocProvider<ImagesViewerBloc>(
      create: (_) => $<ImagesViewerBloc>(),
      child: BlocBuilder<ImagesViewerBloc, ImagesViewerState>(
        builder: (BuildContext context, ImagesViewerState state) {
          blocContext = context;
          final double positionYDelta = state.positionYDelta;
          final Duration animationDuration = state.animationDuration;

          final double topPosition = 0 + positionYDelta;
          final double bottomPosition = 0 - positionYDelta;

          return Scaffold(
            backgroundColor: context.colors.black,
            resizeToAvoidBottomInset: false,
            body: GestureDetector(
              onVerticalDragStart: (details) =>
                  _onVerticalDragStart(context, details),
              onVerticalDragUpdate: (details) =>
                  _onVerticalDragUpdate(context, details),
              onVerticalDragEnd: (details) =>
                  _onVerticalDragEnd(context, details),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: <Widget>[
                  AnimatedPositioned(
                    duration: animationDuration,
                    curve: Curves.fastOutSlowIn,
                    top: topPosition,
                    bottom: bottomPosition,
                    left: 0,
                    right: 0,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: widget.images.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String image = widget.images[index];

                        return PhotoView(
                          imageProvider: switch (widget.source) {
                            ImageSource.asset => AssetImage(image),
                            ImageSource.network => NetworkImage(image),
                          },
                          customSize: Size(size.width, size.height),
                          minScale: PhotoViewComputedScale.contained,
                          maxScale: PhotoViewComputedScale.covered * 2,
                          initialScale: PhotoViewComputedScale.contained,
                          backgroundDecoration: BoxDecoration(
                            color: context.colors.transparent,
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            context.colors.black.copyWithOpacity(.8),
                            context.colors.black.copyWithOpacity(0),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(20.0, 12.0, 12.0, 0),
                      child: ListenableBuilder(
                        listenable: pageController,
                        builder: (BuildContext context, Widget? child) {
                          final int totalPages = widget.images.length;
                          final int currentIndex =
                              pageController.page?.round() ??
                                  widget.initialIndex;
                          final int currentPage = currentIndex + 1;

                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('$currentPage'),
                                  Opacity(
                                    opacity: .5,
                                    child: Text('/$totalPages'),
                                  ),
                                ],
                              ),
                              Clickable(
                                onTap: context.pop,
                                child: const Icon(Icons.close),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onVerticalDragStart(BuildContext context, DragStartDetails details) {
    context
        .read<ImagesViewerBloc>()
        .add(ImagesViewerEvent.setInitialYPosition(details.globalPosition.dy));
    context
        .read<ImagesViewerBloc>()
        .add(ImagesViewerEvent.setCurrentYPosition(details.globalPosition.dy));
  }

  void _onVerticalDragUpdate(BuildContext context, DragUpdateDetails details) {
    final ImagesViewerState state = context.read<ImagesViewerBloc>().state;
    final double positionYDelta =
        state.currentYPosition - state.initialYPosition;

    context.read<ImagesViewerBloc>()
      ..add(ImagesViewerEvent.setCurrentYPosition(details.globalPosition.dy))
      ..add(ImagesViewerEvent.setPositionYDelta(positionYDelta));
  }

  void _onVerticalDragEnd(BuildContext context, DragEndDetails details) {
    const Duration animationDuration = Duration(milliseconds: 300);

    final ImagesViewerState state = context.read<ImagesViewerBloc>().state;
    final double positionYDelta = state.positionYDelta;
    final bool isDisposeLimitExceeded = positionYDelta.abs() > disposeLimit;

    if (isDisposeLimitExceeded) {
      Navigator.of(context).pop();
    } else {
      context.read<ImagesViewerBloc>()
        ..add(const ImagesViewerEvent.setAnimationDuration(animationDuration))
        ..add(const ImagesViewerEvent.setPositionYDelta(0));

      Future<void>.delayed(animationDuration).then((_) {
        // ignore: use_build_context_synchronously
        context
            .read<ImagesViewerBloc>()
            .add(const ImagesViewerEvent.setAnimationDuration(Duration.zero));
      });
    }
  }
}
