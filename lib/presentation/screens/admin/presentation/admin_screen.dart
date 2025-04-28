import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/di/injector.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

@RoutePage()
class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => $<AdminBloc>(),
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Admin panel screen',
                style: context.styles.title3.copyWith(fontSize: 20),
              ),
              const Gap(10),
              Text('In development...', style: context.styles.footer1),
              const Gap(40),
              Padding(
                padding: const Pad(horizontal: 20),
                child: TelegramMetaWrapper(builder: (context, meta) {
                  return Text(meta.toString());
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
