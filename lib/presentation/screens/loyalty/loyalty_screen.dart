import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../ui/pages/in_development_page.dart';

@RoutePage()
class LoyaltyScreen extends StatelessWidget {
  const LoyaltyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InDevelopmentPage('loyalty'),
    );
  }
}
