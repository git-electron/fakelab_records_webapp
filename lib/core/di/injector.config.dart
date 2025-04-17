// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fakelab_records_webapp/core/di/locator.dart' as _i103;
import 'package:fakelab_records_webapp/core/domain/bloc/telegram_data_bloc.dart'
    as _i1011;
import 'package:fakelab_records_webapp/core/domain/service/telegram_service.dart'
    as _i435;
import 'package:fakelab_records_webapp/core/router/router.dart' as _i352;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/domain/images_viewer_bloc.dart'
    as _i15;
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
    gh.factory<_i974.Logger>(() => locator.logger);
    gh.factory<_i435.TelegramService>(() => _i435.TelegramService());
    gh.factory<_i15.ImagesViewerBloc>(() => _i15.ImagesViewerBloc());
    gh.singleton<_i352.AppRouter>(() => _i352.AppRouter());
    gh.singleton<_i1011.TelegramDataBloc>(
        () => _i1011.TelegramDataBloc(gh<_i435.TelegramService>()));
    return this;
  }
}

class _$Locator extends _i103.Locator {}
