part of '../images_viewer_screen.dart';

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    final ImagesViewerBloc bloc = context.read();

    return Align(
      alignment: Alignment.topCenter,
      child: TelegramMetaWrapper(
        builder: (context, meta) {
          return Container(
            width: double.maxFinite,
            height: meta.isMobile ? meta.totalSafeAreaInset.top : 80,
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
            padding: Pad(
              top: meta.isMobile ? meta.safeAreaInset.top : 0,
              horizontal: 20,
            ),
            child: ListenableBuilder(
              listenable: bloc.controller,
              builder: (BuildContext context, Widget? child) {
                final int totalPages = bloc.images.length;
                final int currentIndex =
                    bloc.controller.page?.round() ?? bloc.initialIndex;
                final int currentPage = currentIndex + 1;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
