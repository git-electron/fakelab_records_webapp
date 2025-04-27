import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:blur/blur.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../ui/logo/logo.dart';
import '../../../ui/user_avatar/user_avatar.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';

const double _toolbarHeight = 90;

class BaseAppBarMobile extends StatelessWidget {
  const BaseAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        final double expandedHeight = _expandedHeightByInsets(
          meta.safeAreaInset.top,
          meta.contentSafeAreaInset.top,
        );

        final double collapsedHeight = _collapsedHeightByInsets(
          meta.safeAreaInset.top,
          meta.contentSafeAreaInset.top,
        );

        return SliverAppBar(
          expandedHeight: expandedHeight,
          collapsedHeight: collapsedHeight,
          toolbarHeight: _toolbarHeight,
          automaticallyImplyLeading: false,
          backgroundColor: context.colors.transparent,
          surfaceTintColor: context.colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          pinned: true,
          floating: true,
          forceElevated: false,
          flexibleSpace: LayoutBuilder(
            builder: (context, constraints) {
              final expandRatio = _calculateExpandRatio(
                constraints,
                expandedHeight: expandedHeight,
                collapsedHeight: collapsedHeight,
              );
              final animation = AlwaysStoppedAnimation(expandRatio);

              return Align(
                alignment: Alignment.bottomCenter,
                child: Blur(
                  blur: _animate(
                    animation,
                    valueWhenCollapsed: 10,
                    valueWhenExpanded: 30,
                  ),
                  colorOpacity: _animate(
                    animation,
                    valueWhenCollapsed: .5,
                    valueWhenExpanded: .8,
                  ),
                  blurColor: context.colors.background,
                  alignment: Alignment.bottomCenter,
                  overlay: SizedBox(
                    height: _animate(
                      animation,
                      valueWhenCollapsed: meta.contentSafeAreaInset.top,
                      valueWhenExpanded: _toolbarHeight,
                    ),
                    child: Padding(
                      padding: const Pad(horizontal: 20),
                      child: Stack(
                        children: [
                          Align(
                            alignment: _animate(
                              animation,
                              valueWhenCollapsed: Alignment.center,
                              valueWhenExpanded: Alignment.centerLeft,
                            ),
                            child: Logo(
                              height: _animate(
                                animation,
                                valueWhenCollapsed: 15,
                                valueWhenExpanded: 25,
                              ),
                            ),
                          ),
                          Align(
                            alignment: _animate(
                              animation,
                              valueWhenCollapsed: Alignment.topRight,
                              valueWhenExpanded: Alignment.centerRight,
                            ),
                            child: Opacity(
                              opacity: _animate(
                                animation,
                                valueWhenCollapsed: -1.0,
                                valueWhenExpanded: 1.0,
                              ).clamp(0, 1),
                              child: const UserAvatar(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  T _animate<T>(
    AlwaysStoppedAnimation<double> animation, {
    required T valueWhenCollapsed,
    required T valueWhenExpanded,
  }) =>
      Tween<T>(
        begin: valueWhenCollapsed,
        end: valueWhenExpanded,
      ).evaluate(animation);

  double _expandedHeightByInsets(double inset, double contentInset) =>
      (_toolbarHeight + inset + contentInset)
          .clamp(_toolbarHeight, double.infinity);

  double _collapsedHeightByInsets(double inset, double contentInset) =>
      (inset + contentInset).clamp(_toolbarHeight, double.infinity);

  double _calculateExpandRatio(
    BoxConstraints constraints, {
    required double expandedHeight,
    required double collapsedHeight,
  }) {
    final double expandRatio = (constraints.maxHeight - collapsedHeight) /
        (expandedHeight - collapsedHeight);

    return expandRatio.clamp(0, 1);
  }
}

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      toolbarHeight: _toolbarHeight,
      automaticallyImplyLeading: false,
      backgroundColor: context.colors.transparent,
      surfaceTintColor: context.colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      forceElevated: false,
      flexibleSpace: Blur(
        blur: 30,
        blurColor: context.colors.background,
        alignment: Alignment.bottomCenter,
        overlay: const SizedBox(
          height: _toolbarHeight,
          child: Padding(
            padding: Pad(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(),
                UserAvatar(),
              ],
            ),
          ),
        ),
        child: const SizedBox(
          height: _toolbarHeight,
          width: double.infinity,
        ),
      ),
    );
  }
}
