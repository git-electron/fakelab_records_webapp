import 'package:blur/blur.dart';
import 'package:fakelab_records_webapp/core/theme/theme_extensions.dart';
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/domain/bloc/admin_edit_client_bloc.dart';
import 'package:fakelab_records_webapp/presentation/ui/wrappers/telegram/telegram_meta_wrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class EditClientScreenAppBarMobile extends StatelessWidget {
  const EditClientScreenAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final AdminEditClientBloc bloc = context.read();

    return TelegramMetaWrapper(
      builder: (context, meta) {
        return BlocBuilder<AdminEditClientBloc, AdminEditClientState>(
          builder: (context, state) {
            return SliverAppBar(
              toolbarHeight: meta.totalSafeAreaInset.top,
              automaticallyImplyLeading: false,
              backgroundColor: context.colors.transparent,
              surfaceTintColor: context.colors.transparent,
              elevation: 0,
              scrolledUnderElevation: 0,
              pinned: true,
              floating: true,
              forceElevated: false,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Blur(
                      blur: 10,
                      blurColor: context.colors.background,
                      alignment: Alignment.bottomCenter,
                      overlay: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        height: meta.contentSafeAreaInset.top,
                        child: Text(
                          bloc.client.idShort,
                          style: context.styles.body1,
                        ),
                      ),
                      child: const SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
