part of '../../../admin_create_staff_member_screen.dart';

class _Avatar extends StatefulWidget {
  const _Avatar({
    this.height = 200,
    this.width,
    this.photoUrl,
  });

  final double height;
  final double? width;

  final String? photoUrl;

  @override
  State<_Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<_Avatar>
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
    final AdminCreateStaffMemberBloc bloc = context.read();

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
          bloc.add(AdminCreateStaffMemberEvent.avatarChanged(fileUrl));
          final Uint8List fileContent = await _controller.getFileData(file);
          bloc.add(
            AdminCreateStaffMemberEvent.avatarContentChanged(fileContent),
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
                  bloc.add(AdminCreateStaffMemberEvent.avatarChanged(fileUrl));
                  final Uint8List fileContent =
                      await _controller.getFileData(file);
                  bloc.add(
                    AdminCreateStaffMemberEvent.avatarContentChanged(
                      fileContent,
                    ),
                  );
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
                    const AdminCreateStaffMemberEvent.avatarChanged(null),
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
