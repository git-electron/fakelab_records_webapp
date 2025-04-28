import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/presentation/ui/pages/in_development_page.dart';
import 'package:flutter/material.dart';

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
