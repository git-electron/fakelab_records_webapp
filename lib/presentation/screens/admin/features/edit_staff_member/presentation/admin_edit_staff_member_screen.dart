import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/edit_staff_member/presentation/widgets/edit_staff_properties.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/models/staff_member.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../domain/bloc/admin_edit_staff_member_bloc.dart';
import 'widgets/edit_staff_avatar.dart';
import 'widgets/edit_staff_form.dart';
import 'widgets/edit_staff_member_button.dart';
import 'widgets/edit_staff_member_screen_app_bar.dart';

@RoutePage()
class AdminEditStaffMemberScreen extends StatelessWidget {
  const AdminEditStaffMemberScreen({
    @PathParam('id') required this.id,
    required this.staffMember,
    required this.adminStaffBloc,
    super.key,
  });

  final String id;
  final StaffMember staffMember;
  final AdminStaffBloc adminStaffBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminEditStaffMemberBloc>(
        param1: staffMember,
        param2: adminStaffBloc,
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            TelegramMetaWrapper(builder: (context, meta) {
              if (meta.isMobile) {
                return const EditStaffMemberScreenAppBarMobile();
              }
              return const SliverToBoxAdapter();
            }),
            const SliverToBoxAdapter(
              child: AdminEditStaffMemberScreenBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminEditStaffMemberScreenBody extends StatelessWidget {
  const AdminEditStaffMemberScreenBody({super.key});

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
            EditStaffMemberHeader(),
            Gap(20),
            EditStaffMemberAdaptiveForm(),
            Gap(20),
            EditStaffProperties(),
            Gap(20),
            EditStaffMemberButton(),
          ],
        ),
      ),
    );
  }
}

class EditStaffMemberHeader extends StatelessWidget {
  const EditStaffMemberHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: context.colors.background,
      child: Text(
        'Ретактировать сотрудника',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}

class EditStaffMemberAdaptiveForm extends StatelessWidget {
  const EditStaffMemberAdaptiveForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1000;

    if (isMobile) {
      return Column(
        children: [
          BlocBuilder<AdminEditStaffMemberBloc, AdminEditStaffMemberState>(
            builder: (context, state) {
              return EditStaffAvatar(photoUrl: state.avatarFileUrl);
            },
          ),
          const Gap(20),
          const EditStaffForm(),
        ],
      );
    }
    return Row(
      children: [
        BlocBuilder<AdminEditStaffMemberBloc, AdminEditStaffMemberState>(
          builder: (context, state) {
            return EditStaffAvatar(
              height: 150,
              width: 150,
              photoUrl: state.avatarFileUrl,
            );
          },
        ),
        const Gap(20),
        const Expanded(child: EditStaffForm()),
      ],
    );
  }
}
