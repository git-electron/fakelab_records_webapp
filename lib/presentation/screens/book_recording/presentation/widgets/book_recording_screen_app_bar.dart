import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';

const double _toolbarHeight = 90;

class BookRecordingScreenAppBarMobile extends StatelessWidget {
  const BookRecordingScreenAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        return SliverAppBar(
          toolbarHeight: meta.totalSafeAreaInset.top,
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
              return Align(
                alignment: Alignment.bottomCenter,
                child: Blur(
                  blur: 10,
                  blurColor: context.colors.background,
                  alignment: Alignment.bottomCenter,
                  overlay: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: meta.contentSafeAreaInset.top,
                    child: Text(
                      'Выбрать дату',
                      style: context.styles.body1,
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
}

class BookRecordingScreenAppBar extends StatelessWidget {
  const BookRecordingScreenAppBar({super.key});

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
        overlay: Container(
          height: _toolbarHeight,
          width: double.maxFinite,
          padding: const Pad(horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Выбрать дату',
            style: context.styles.body1,
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
