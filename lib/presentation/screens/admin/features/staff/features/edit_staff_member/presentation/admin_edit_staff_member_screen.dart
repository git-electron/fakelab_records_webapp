import 'dart:typed_data';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blur/blur.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

import '../../../../../../../../core/di/injector.dart';
import '../../../../../../../../core/extensions/border_radius_extensions.dart';
import '../../../../../../../../core/extensions/string_extensions.dart';
import '../../../../../../../../core/gen/assets.gen.dart';
import '../../../../../../../../core/gen/colors.gen.dart';
import '../../../../../../../../core/theme/theme_extensions.dart';
import '../../../../../../../ui/app_button.dart';
import '../../../../../../../ui/app_confirmation_dialog/app_confirmation_dialog.dart';
import '../../../../../../../ui/app_text_field.dart';
import '../../../../../../../ui/avatar/avatar.dart';
import '../../../../../../../ui/wrappers/tappable.dart';
import '../../../../../../../ui/wrappers/telegram/telegram_meta_wrapper.dart';
import '../../../../../domain/bloc/admin_staff_bloc/admin_staff_bloc.dart';
import '../../../domain/models/staff_activity.dart';
import '../../../domain/models/staff_member.dart';
import '../../../domain/models/staff_service_type.dart';
import '../domain/bloc/admin_edit_staff_member_bloc.dart';
import '../domain/models/admin_edit_staff_member_bloc_data.dart';

part 'widgets/app_bar.dart';
part 'widgets/avatar_and_form/avatar_and_form.dart';
part 'widgets/avatar_and_form/widgets/avatar.dart';
part 'widgets/avatar_and_form/widgets/form.dart';
part 'widgets/buttons.dart';
part 'widgets/header.dart';
part 'widgets/properties/properties.dart';
part 'widgets/properties/widgets/property_item.dart';

@RoutePage()
class AdminEditStaffMemberScreen extends StatelessWidget {
  const AdminEditStaffMemberScreen({
    required this.staffMember,
    required this.adminStaffBloc,
    @PathParam('id') required this.id,
    super.key,
  });

  final String id;
  final StaffMember staffMember;
  final AdminStaffBloc adminStaffBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<AdminEditStaffMemberBloc>(
        param1: AdminEditStaffMemberBlocData(
          staffMember: staffMember,
          adminStaffBloc: adminStaffBloc,
        ),
      ),
      child: const Scaffold(
        body: CustomScrollView(
          slivers: [
            _AppBar(),
            _Body(),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: context.colors.background,
          constraints: const BoxConstraints(maxWidth: 1500),
          padding: const Pad(all: 20, vertical: 20),
          child: const Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(),
              _AvatarAndForm(),
              _Properties(),
              _Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}
