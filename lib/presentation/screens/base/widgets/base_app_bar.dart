import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/theme_extensions.dart';
import '../../../ui/avatar/user_avatar.dart';
import '../../../ui/logo/logo.dart';
import '../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';

const double _toolbarHeightExpanded = 90;
const double _toolbarHeightCollapsed = 50;

class BaseAppBar extends StatelessWidget {
  const BaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(builder: (context, meta) {
      if (meta.isMobile) return const _Mobile();
      return const _Desktop();
    });
  }
}

class _Mobile extends StatelessWidget {
  const _Mobile();

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
          toolbarHeight: _toolbarHeightExpanded,
          automaticallyImplyLeading: false,
          backgroundColor: context.colors.transparent,
          surfaceTintColor: context.colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          pinned: true,
          floating: false,
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
                      valueWhenExpanded: _toolbarHeightExpanded,
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
      (_toolbarHeightExpanded + inset + contentInset)
          .clamp(_toolbarHeightExpanded, double.infinity);

  double _collapsedHeightByInsets(double inset, double contentInset) =>
      (inset + contentInset).clamp(_toolbarHeightExpanded, double.infinity);

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

class _Desktop extends StatelessWidget {
  const _Desktop();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: _toolbarHeightExpanded,
      collapsedHeight: _toolbarHeightCollapsed,
      toolbarHeight: _toolbarHeightCollapsed,
      automaticallyImplyLeading: false,
      backgroundColor: context.colors.transparent,
      surfaceTintColor: context.colors.transparent,
      elevation: 0,
      pinned: true,
      floating: false,
      forceElevated: false,
      scrolledUnderElevation: 0,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final expandRatio = _calculateExpandRatio(
            constraints,
            expandedHeight: _toolbarHeightExpanded,
            collapsedHeight: _toolbarHeightCollapsed,
          );
          final animation = AlwaysStoppedAnimation(expandRatio);

          return Blur(
            blur: 30,
            blurColor: context.colors.background,
            alignment: Alignment.bottomCenter,
            overlay: SizedBox(
              height: _toolbarHeightExpanded,
              child: Padding(
                padding: const Pad(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Logo(
                      height: _animate(
                        animation,
                        valueWhenCollapsed: 15,
                        valueWhenExpanded: 25,
                      ),
                    ),
                    UserAvatar(
                      size: _animate(
                        animation,
                        valueWhenCollapsed: 35,
                        valueWhenExpanded: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            child: const SizedBox(
              height: _toolbarHeightExpanded,
              width: double.infinity,
            ),
          );
        },
      ),
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
