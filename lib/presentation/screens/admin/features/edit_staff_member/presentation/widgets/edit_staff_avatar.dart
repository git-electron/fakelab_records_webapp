import 'dart:typed_data';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fakelab_records_webapp/core/extensions/string_extensions.dart';
import 'package:fakelab_records_webapp/core/gen/assets.gen.dart';
import 'package:fakelab_records_webapp/core/gen/colors.gen.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/edit_staff_member/domain/bloc/admin_edit_staff_member_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/avatar/avatar.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/tappable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class EditStaffAvatar extends StatefulWidget {
  const EditStaffAvatar({
    this.height = 200,
    this.width,
    this.photoUrl,
    super.key,
  });

  final double height;
  final double? width;

  final String? photoUrl;

  @override
  State<EditStaffAvatar> createState() => _EditStaffAvatarState();
}

class _EditStaffAvatarState extends State<EditStaffAvatar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      value: 1.0,
      vsync: this,
      duration: const Duration(milliseconds: 120),
      reverseDuration: const Duration(milliseconds: 120),
    );
    final CurvedAnimation curvedAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.decelerate,
      reverseCurve: Curves.fastOutSlowIn,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    _colorAnimation =
        ColorTween(begin: AppColors.primary, end: AppColors.onBackground)
            .animate(curvedAnimation);
    _animationController.forward();
  }

  late final DropzoneViewController _controller;

  @override
  Widget build(BuildContext context) {
    final AdminEditStaffMemberBloc bloc = context.read();

    return Container(
      height: widget.height,
      width: widget.width ?? double.maxFinite,
      alignment: Alignment.center,
      child: Tappable(
        onTap: () async {
          final List files = await _controller.pickFiles();
          if (files.isEmpty) return;

          final file = files.first;
          _animationController.forward();
          final String fileUrl = await _controller.createFileUrl(file);
          bloc.add(AdminEditStaffMemberEvent.avatarChanged(fileUrl));
          final Uint8List fileContent = await _controller.getFileData(file);
          bloc.add(
            AdminEditStaffMemberEvent.avatarContentChanged(fileContent),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: DropzoneView(
                onCreated: (controller) => _controller = controller,
                onHover: () {
                  if (!_animationController.isAnimating) {
                    _animationController.reverse();
                  }
                },
                onLeave: () => _animationController.forward(),
                onDropFile: (file) async {
                  _animationController.forward();
                  final String fileUrl = await _controller.createFileUrl(file);
                  bloc.add(AdminEditStaffMemberEvent.avatarChanged(fileUrl));
                },
              ),
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colors.card,
              ),
              child: Stack(
                children: [
                  if (widget.photoUrl != null)
                    Avatar(
                      size: 150,
                      photoUrl: widget.photoUrl!,
                    ),
                  Padding(
                    padding: const Pad(all: 5),
                    child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return DottedBorder(
                          color: _colorAnimation.value!,
                          strokeWidth: 3 + _animation.value,
                          dashPattern: [10, _animation.value * 10],
                          strokeCap: StrokeCap.round,
                          borderType: BorderType.Circle,
                          child: Align(
                            alignment: Alignment.center,
                            child: widget.photoUrl.isNotNullAndEmpty
                                ? const SizedBox.square(dimension: 50)
                                : Opacity(
                                    opacity: _animation.value,
                                    child: Assets.icons.user.light.svg(
                                      height: 50,
                                    ),
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            if (widget.photoUrl.isNotNullAndEmpty)
              Container(
                height: 150,
                width: 150,
                alignment: Alignment.topRight,
                child: Tappable(
                  onTap: () => bloc.add(
                    const AdminEditStaffMemberEvent.avatarChanged(null),
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      shape: BoxShape.circle,
                    ),
                    padding: const Pad(all: 8),
                    alignment: Alignment.center,
                    child: Assets.icons.cross.light.svg(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
