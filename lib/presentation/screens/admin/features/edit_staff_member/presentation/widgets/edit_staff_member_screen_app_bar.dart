import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/create_staff_member/domain/bloc/admin_create_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class EditStaffMemberScreenAppBarMobile extends StatelessWidget {
  const EditStaffMemberScreenAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return TelegramMetaWrapper(
      builder: (context, meta) {
        return BlocBuilder<AdminCreateStaffMemberBloc,
            AdminCreateStaffMemberState>(
          builder: (context, state) {
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
                          'Добавить',
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
