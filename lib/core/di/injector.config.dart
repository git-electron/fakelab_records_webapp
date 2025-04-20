// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:assets_audio_player/assets_audio_player.dart' as _i842;
import 'package:fakelab_records_webapp/core/data/client/user_client.dart'
    as _i415;
import 'package:fakelab_records_webapp/core/di/locator.dart' as _i103;
import 'package:fakelab_records_webapp/core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart'
    as _i133;
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart'
    as _i109;
import 'package:fakelab_records_webapp/core/domain/service/telegram_service.dart'
    as _i435;
import 'package:fakelab_records_webapp/core/router/router.dart' as _i352;
import 'package:fakelab_records_webapp/features/my_orders/data/client/orders_client.dart'
    as _i652;
import 'package:fakelab_records_webapp/features/my_orders/domain/bloc/orders_bloc.dart'
    as _i652;
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/audio_player_bloc/audio_player_bloc.dart'
    as _i29;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/domain/images_viewer_bloc.dart'
    as _i15;
import 'package:firebase_database/firebase_database.dart' as _i345;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final locator = _$Locator();
    gh.factory<_i842.AssetsAudioPlayer>(() => locator.assetsAudioPlayer);
    gh.factory<_i345.FirebaseDatabase>(() => locator.database);
    gh.factory<_i345.DatabaseReference>(() => locator.ref);
    gh.factory<_i974.Logger>(() => locator.logger);
    gh.factory<_i435.TelegramService>(() => _i435.TelegramService());
    gh.singleton<_i133.TelegramDataBloc>(
        () => _i133.TelegramDataBloc(gh<_i435.TelegramService>()));
    gh.factoryParam<_i15.ImagesViewerBloc, List<String>, int>((
      images,
      initialIndex,
    ) =>
        _i15.ImagesViewerBloc(
          images: images,
          initialIndex: initialIndex,
          telegramService: gh<_i435.TelegramService>(),
        ));
    gh.factory<_i415.UserClient>(() => _i415.UserClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i652.OrdersClient>(() => _i652.OrdersClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.singleton<_i352.AppRouter>(
        () => _i352.AppRouter(gh<_i133.TelegramDataBloc>()));
    gh.factory<_i29.AudioPlayerBloc>(
        () => _i29.AudioPlayerBloc(gh<_i842.AssetsAudioPlayer>()));
    gh.singleton<_i109.UserBloc>(() => _i109.UserBloc(
          gh<_i415.UserClient>(),
          gh<_i133.TelegramDataBloc>(),
        ));
    gh.factory<_i652.OrdersBloc>(() => _i652.OrdersBloc(
          gh<_i109.UserBloc>(),
          gh<_i652.OrdersClient>(),
        ));
    return this;
  }
}

class _$Locator extends _i103.Locator {}
