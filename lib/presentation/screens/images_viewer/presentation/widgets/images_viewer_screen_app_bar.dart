import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/extensions/color_extensions.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/domain/images_viewer_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/clickable.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesViewerScreenAppBarMobile extends StatelessWidget {
  const ImagesViewerScreenAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagesViewerBloc bloc = context.read();

    return TelegramMetaWrapper(
      builder: (context, meta) {
        return Container(
          width: double.maxFinite,
          height: meta.totalSafeAreaInset.top,
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
          padding: Pad(top: 12 + meta.safeAreaInset.top, left: 20, right: 20),
          child: ListenableBuilder(
            listenable: bloc.controller,
            builder: (BuildContext context, Widget? child) {
              final int totalPages = bloc.images.length;
              final int currentIndex =
                  bloc.controller.page?.round() ?? bloc.initialIndex;
              final int currentPage = currentIndex + 1;

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('$currentPage'),
                  Opacity(
                    opacity: .5,
                    child: Text('/$totalPages'),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class ImagesViewerScreenAppBar extends StatelessWidget {
  const ImagesViewerScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagesViewerBloc bloc = context.read();

    return Container(
      width: double.maxFinite,
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
      padding: const Pad(left: 20, top: 12, right: 12),
      child: ListenableBuilder(
        listenable: bloc.controller,
        builder: (BuildContext context, Widget? child) {
          final int totalPages = bloc.images.length;
          final int currentIndex =
              bloc.controller.page?.round() ?? bloc.initialIndex;
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
    );
  }
}
