import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';

import '../../../../core/di/injector.dart';
import '../../../../core/extensions/color_extensions.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../domain/images_viewer_bloc.dart';

part 'widgets/app_bar.dart';

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

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocProvider<ImagesViewerBloc>(
      create: (_) => $<ImagesViewerBloc>(
        param1: widget.images,
        param2: widget.initialIndex,
      ),
      child: BlocBuilder<ImagesViewerBloc, ImagesViewerState>(
        builder: (BuildContext context, ImagesViewerState state) {
          final ImagesViewerBloc bloc = context.read();

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
                      controller: bloc.controller,
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
                  const _AppBar(),
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
