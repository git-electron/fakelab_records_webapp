import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/create_staff_member/domain/bloc/admin_create_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/create_staff_member/presentation/widgets/create_staff_properties.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'widgets/create_staff_avatar.dart';
import 'widgets/create_staff_form.dart';
import 'widgets/create_staff_member_button.dart';
import 'widgets/create_staff_member_screen_app_bar.dart';

@RoutePage()
class AdminCreateStaffMemberScreen extends StatelessWidget {
  const AdminCreateStaffMemberScreen({
    required this.adminStaffBloc,
    super.key,
  });

  final AdminStaffBloc adminStaffBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminCreateStaffMemberBloc>(
        param1: adminStaffBloc,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            TelegramMetaWrapper(builder: (context, meta) {
              if (meta.isMobile) {
                return const CreateStaffMemberScreenAppBarMobile();
              }
              return const SliverToBoxAdapter();
            }),
            const SliverToBoxAdapter(
              child: AdminCreateStaffMemberScreenBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminCreateStaffMemberScreenBody extends StatelessWidget {
  const AdminCreateStaffMemberScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: context.colors.background,
        constraints: const BoxConstraints(maxWidth: 1500),
        padding: const Pad(top: 20, horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            CreateStaffMemberHeader(),
            Gap(20),
            CreateStaffMemberAdaptiveForm(),
            Gap(20),
            CreateStaffProperties(),
            Gap(20),
            CreateStaffMemberButton(),
          ],
        ),
      ),
    );
  }
}

class CreateStaffMemberHeader extends StatelessWidget {
  const CreateStaffMemberHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Добавить сотрудника',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}

class CreateStaffMemberAdaptiveForm extends StatelessWidget {
  const CreateStaffMemberAdaptiveForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    if (isMobile) {
      return Column(
        children: [
          BlocBuilder<AdminCreateStaffMemberBloc, AdminCreateStaffMemberState>(
            builder: (context, state) {
              return CreateStaffAvatar(photoUrl: state.avatarFileUrl);
            },
          ),
          const Gap(20),
          const CreateStaffForm(),
        ],
      );
    }
    return Row(
      children: [
        BlocBuilder<AdminCreateStaffMemberBloc, AdminCreateStaffMemberState>(
          builder: (context, state) {
            return CreateStaffAvatar(
              height: 150,
              width: 150,
              photoUrl: state.avatarFileUrl,
            );
          },
        ),
        const Gap(20),
        const Expanded(child: CreateStaffForm()),
      ],
    );
  }
}
