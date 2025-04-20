import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../../core/theme/theme_extensions.dart';
import '../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';

const double _toolbarHeight = 90;

class MyOrderScreenAppBarMobile extends StatelessWidget {
  const MyOrderScreenAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        return BlocBuilder<MyOrderBloc, MyOrderState>(
          builder: (context, state) {
            return SliverAppBar(
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
                          state.order?.idShort ?? '',
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
      },
    );
  }
}

class MyOrderScreenAppBar extends StatelessWidget {
  const MyOrderScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyOrderBloc, MyOrderState>(
      builder: (context, state) {
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
            blur: 10,
            blurColor: context.colors.background,
            alignment: Alignment.bottomCenter,
            overlay: Container(
              height: _toolbarHeight,
              padding: const Pad(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Tappable(
                    onTap: context.pop,
                    child: Assets.icons.arrowLeft.svg(width: 30),
                  ),
                  const Gap(20),
                  Text(
                    state.order?.idShort ?? '',
                    style: context.styles.body1,
                  ),
                ],
              ),
            ),
            child: const SizedBox(
              height: _toolbarHeight,
              width: double.infinity,
            ),
          ),
        );
      },
    );
  }
}
