import 'package:auto_route/auto_route.dart';
import '../../../core/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class LoyaltyScreen extends StatelessWidget {
  const LoyaltyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Loyalty screen',
              style: context.styles.title3.copyWith(fontSize: 20),
            ),
            const Gap(10),
            Text('In development...', style: context.styles.footer1),
          ],
        ),
      ),
    );
  }
}
