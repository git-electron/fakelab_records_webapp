import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import '../../../../../../core/gen/assets.gen.dart';
import '../../../../../../core/theme/theme_extensions.dart';
import 'examples_list.dart';
import '../../../../../ui/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class HomeScreenExamples extends StatelessWidget {
  const HomeScreenExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: Pad(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExamplesHeader(),
          Gap(20),
          ExamplesList(),
          Gap(20),
          ExamplesButton(),
        ],
      ),
    );
  }
}

class ExamplesHeader extends StatelessWidget {
  const ExamplesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        'Примеры работ',
        style: context.styles.subtitle1.copyWith(
          color: context.colors.title,
        ),
      ),
    );
  }
}

class ExamplesButton extends StatelessWidget {
  const ExamplesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      onTap: () {},
      isEnabled: false,
      text: 'Больше примеров',
      icon: Assets.icons.arrowRight.dark,
    );
  }
}
