// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:assets_audio_player/assets_audio_player.dart' as _i842;
import 'package:cloudinary_url_gen/cloudinary.dart' as _i751;
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
import 'package:fakelab_records_webapp/core/utils/debouncer/debouncer.dart'
    as _i333;
import 'package:fakelab_records_webapp/core/utils/id_generator/id_generator.dart'
    as _i610;
import 'package:fakelab_records_webapp/features/my_bookings/data/client/bookings_client.dart'
    as _i857;
import 'package:fakelab_records_webapp/features/my_bookings/domain/bloc/my_bookings_feature_bloc.dart'
    as _i327;
import 'package:fakelab_records_webapp/features/my_bookings/domain/models/my_bookings_feature_bloc_data/my_bookings_feature_bloc_data.dart'
    as _i89;
import 'package:fakelab_records_webapp/features/my_orders/data/client/orders_client.dart'
    as _i652;
import 'package:fakelab_records_webapp/features/my_orders/domain/bloc/my_orders_feature_bloc.dart'
    as _i790;
import 'package:fakelab_records_webapp/features/my_orders/domain/models/my_orders_feature_bloc_data/my_orders_feature_bloc_data.dart'
    as _i334;
import 'package:fakelab_records_webapp/presentation/screens/admin/client/admin_clients_client.dart'
    as _i415;
import 'package:fakelab_records_webapp/presentation/screens/admin/client/admin_orders_client.dart'
    as _i9;
import 'package:fakelab_records_webapp/presentation/screens/admin/client/admin_staff_client.dart'
    as _i255;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_bloc/admin_bloc.dart'
    as _i869;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_clients_bloc/admin_clients_bloc.dart'
    as _i515;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_orders_bloc/admin_orders_bloc.dart'
    as _i522;
import 'package:fakelab_records_webapp/presentation/screens/admin/domain/bloc/admin_staff_bloc/admin_staff_bloc.dart'
    as _i330;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/domain/bloc/admin_clients_filters_bloc.dart'
    as _i689;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/client/admin_create_client_client.dart'
    as _i980;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/domain/bloc/admin_create_client_bloc.dart'
    as _i39;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/create_client/domain/models/admin_create_client_bloc_data.dart'
    as _i100;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/client/admin_edit_client_client.dart'
    as _i1061;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/domain/bloc/admin_edit_client_bloc.dart'
    as _i1028;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/clients/features/edit_client/domain/models/admin_edit_client_bloc_data.dart'
    as _i718;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/domain/bloc/admin_orders_filters_bloc.dart'
    as _i718;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/client/admin_create_order_client.dart'
    as _i742;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/domain/bloc/admin_create_order_bloc.dart'
    as _i1030;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/create_order/domain/models/admin_create_order_bloc_data.dart'
    as _i908;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/order/client/admin_order_client.dart'
    as _i150;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/order/domain/bloc/admin_order_bloc.dart'
    as _i514;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/orders/features/order/domain/models/admin_order_bloc_data.dart'
    as _i838;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/domain/bloc/admin_staff_filters_bloc.dart'
    as _i565;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/client/admin_create_staff_member_client.dart'
    as _i89;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/domain/bloc/admin_create_staff_member_bloc.dart'
    as _i672;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/create_staff_member/domain/models/admin_create_staff_member_bloc_data.dart'
    as _i49;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/client/admin_edit_staff_member_client.dart'
    as _i532;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/domain/bloc/admin_edit_staff_member_bloc.dart'
    as _i775;
import 'package:fakelab_records_webapp/presentation/screens/admin/features/staff/features/edit_staff_member/domain/models/admin_edit_staff_member_bloc_data.dart'
    as _i317;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/client/book_recording_client.dart'
    as _i761;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/client/bookings_client.dart'
    as _i511;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/book_recording_bloc/book_recording_bloc.dart'
    as _i108;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/bloc/bookings_bloc/bookings_bloc.dart'
    as _i763;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/domain/models/book_recording_bloc_data/book_recording_bloc_data.dart'
    as _i227;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_date/domain/bloc/book_recording_date_bloc.dart'
    as _i206;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_date/domain/models/book_recording_date_bloc_data.dart'
    as _i241;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/domain/bloc/book_recording_time_bloc.dart'
    as _i140;
import 'package:fakelab_records_webapp/presentation/screens/book_recording/features/book_recording_time/domain/models/book_recording_time_bloc_data.dart'
    as _i756;
import 'package:fakelab_records_webapp/presentation/screens/home/data/client/admin_panel_client.dart'
    as _i562;
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/admin_panel_bloc/admin_panel_bloc.dart'
    as _i481;
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/audio_player_bloc/audio_player_bloc.dart'
    as _i29;
import 'package:fakelab_records_webapp/presentation/screens/home/domain/bloc/home_bloc/home_bloc.dart'
    as _i19;
import 'package:fakelab_records_webapp/presentation/screens/home/domain/models/home_bloc_data/home_bloc_data.dart'
    as _i298;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/domain/bloc/images_viewer_bloc.dart'
    as _i1021;
import 'package:fakelab_records_webapp/presentation/screens/images_viewer/domain/models/images_viewer_bloc_data.dart'
    as _i465;
import 'package:fakelab_records_webapp/presentation/screens/my_order/data/client/my_order_client.dart'
    as _i129;
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/bloc/my_order_bloc.dart'
    as _i843;
import 'package:fakelab_records_webapp/presentation/screens/my_order/domain/models/my_order_bloc_data.dart'
    as _i215;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/bloc/my_orders_bloc/my_orders_bloc.dart'
    as _i768;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/bloc/my_orders_filters_bloc/my_orders_filters_bloc.dart'
    as _i454;
import 'package:fakelab_records_webapp/presentation/screens/my_orders/domain/models/my_orders_bloc_data.dart'
    as _i933;
import 'package:firebase_database/firebase_database.dart' as _i345;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final locator = _$Locator();
    gh.factory<_i842.AssetsAudioPlayer>(() => locator.assetsAudioPlayer);
    gh.factory<_i345.FirebaseDatabase>(() => locator.database);
    gh.factory<_i345.DatabaseReference>(() => locator.ref);
    await gh.factoryAsync<_i751.Cloudinary>(
      () => locator.cloudinary,
      preResolve: true,
    );
    gh.factory<_i974.Logger>(() => locator.logger);
    gh.factory<_i435.TelegramService>(() => _i435.TelegramService());
    gh.factory<_i333.Debouncer>(() => _i333.Debouncer());
    gh.factory<_i610.IdGenerator>(() => _i610.IdGenerator());
    gh.factory<_i689.AdminClientsFiltersBloc>(
        () => _i689.AdminClientsFiltersBloc());
    gh.factory<_i718.AdminOrdersFiltersBloc>(
        () => _i718.AdminOrdersFiltersBloc());
    gh.factory<_i565.AdminStaffFiltersBloc>(
        () => _i565.AdminStaffFiltersBloc());
    gh.factory<_i454.MyOrdersFiltersBloc>(() => _i454.MyOrdersFiltersBloc());
    gh.factory<_i415.AdminClientsClient>(() => _i415.AdminClientsClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i9.AdminOrdersClient>(() => _i9.AdminOrdersClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i255.AdminStaffClient>(() => _i255.AdminStaffClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i980.AdminCreateClientClient>(
        () => _i980.AdminCreateClientClient(
              gh<_i345.DatabaseReference>(),
              gh<_i974.Logger>(),
            ));
    gh.factory<_i1061.AdminEditClientClient>(() => _i1061.AdminEditClientClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i742.AdminCreateOrderClient>(() => _i742.AdminCreateOrderClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i150.AdminOrderClient>(() => _i150.AdminOrderClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i89.AdminCreateStaffMemberClient>(
        () => _i89.AdminCreateStaffMemberClient(
              gh<_i345.DatabaseReference>(),
              gh<_i974.Logger>(),
            ));
    gh.factory<_i532.AdminEditStaffMemberClient>(
        () => _i532.AdminEditStaffMemberClient(
              gh<_i345.DatabaseReference>(),
              gh<_i974.Logger>(),
            ));
    gh.factory<_i511.BookingsClient>(() => _i511.BookingsClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i562.AdminPanelClient>(() => _i562.AdminPanelClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i129.MyOrderClient>(() => _i129.MyOrderClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i761.BookRecordingClient>(() => _i761.BookRecordingClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.singleton<_i133.TelegramDataBloc>(
        () => _i133.TelegramDataBloc(gh<_i435.TelegramService>()));
    gh.factory<_i763.BookingsBloc>(() => _i763.BookingsBloc(
          gh<_i511.BookingsClient>(),
          gh<_i435.TelegramService>(),
        ));
    gh.factoryParam<_i1021.ImagesViewerBloc, _i465.ImagesViewerBlocData,
        dynamic>((
      data,
      _,
    ) =>
        _i1021.ImagesViewerBloc(
          gh<_i435.TelegramService>(),
          data,
        ));
    gh.factory<_i415.UserClient>(() => _i415.UserClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i652.OrdersClient>(() => _i652.OrdersClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i857.BookingsClient>(() => _i857.BookingsClient(
          gh<_i345.DatabaseReference>(),
          gh<_i974.Logger>(),
        ));
    gh.factory<_i869.AdminBloc>(() => _i869.AdminBloc(
          gh<_i435.TelegramService>(),
          gh<_i133.TelegramDataBloc>(),
        ));
    gh.factory<_i29.AudioPlayerBloc>(
        () => _i29.AudioPlayerBloc(gh<_i842.AssetsAudioPlayer>()));
    gh.factoryParam<_i843.MyOrderBloc, _i215.MyOrderBlocData, dynamic>((
      data,
      _,
    ) =>
        _i843.MyOrderBloc(
          gh<_i129.MyOrderClient>(),
          gh<_i435.TelegramService>(),
          data,
        ));
    gh.factoryParam<_i514.AdminOrderBloc, _i838.AdminOrderBlocData, dynamic>((
      data,
      _,
    ) =>
        _i514.AdminOrderBloc(
          gh<_i150.AdminOrderClient>(),
          data,
        ));
    gh.singleton<_i109.UserBloc>(() => _i109.UserBloc(
          gh<_i415.UserClient>(),
          gh<_i133.TelegramDataBloc>(),
        ));
    gh.factory<_i522.AdminOrdersBloc>(() => _i522.AdminOrdersBloc(
          gh<_i109.UserBloc>(),
          gh<_i9.AdminOrdersClient>(),
        ));
    gh.factory<_i481.AdminPanelBloc>(() => _i481.AdminPanelBloc(
          gh<_i109.UserBloc>(),
          gh<_i562.AdminPanelClient>(),
        ));
    gh.singleton<_i352.AppRouter>(() => _i352.AppRouter(
          gh<_i974.Logger>(),
          gh<_i109.UserBloc>(),
          gh<_i133.TelegramDataBloc>(),
        ));
    gh.factoryParam<_i19.HomeBloc, _i298.HomeBlocData, dynamic>((
      data,
      _,
    ) =>
        _i19.HomeBloc(
          gh<_i109.UserBloc>(),
          data,
        ));
    gh.factoryParam<_i140.BookRecordingTimeBloc,
        _i756.BookRecordingTimeBlocData, dynamic>((
      data,
      _,
    ) =>
        _i140.BookRecordingTimeBloc(
          gh<_i352.AppRouter>(),
          data,
        ));
    gh.factoryParam<_i768.MyOrdersBloc, _i933.MyOrdersBlocData, dynamic>((
      data,
      _,
    ) =>
        _i768.MyOrdersBloc(
          gh<_i109.UserBloc>(),
          data,
        ));
    gh.factoryParam<_i790.MyOrdersFeatureBloc, _i334.MyOrdersFeatureBlocData,
        dynamic>((
      data,
      _,
    ) =>
        _i790.MyOrdersFeatureBloc(
          gh<_i109.UserBloc>(),
          gh<_i652.OrdersClient>(),
          data,
        ));
    gh.factoryParam<_i1028.AdminEditClientBloc, _i718.AdminEditClientBlocData,
        dynamic>((
      data,
      _,
    ) =>
        _i1028.AdminEditClientBloc(
          gh<_i352.AppRouter>(),
          gh<_i1061.AdminEditClientClient>(),
          data,
        ));
    gh.factory<_i330.AdminStaffBloc>(() => _i330.AdminStaffBloc(
          gh<_i109.UserBloc>(),
          gh<_i255.AdminStaffClient>(),
        ));
    gh.factoryParam<_i327.MyBookingsFeatureBloc, _i89.MyBookingsFeatureBlocData,
        dynamic>((
      data,
      _,
    ) =>
        _i327.MyBookingsFeatureBloc(
          gh<_i109.UserBloc>(),
          gh<_i857.BookingsClient>(),
          data,
        ));
    gh.factory<_i515.AdminClientsBloc>(() => _i515.AdminClientsBloc(
          gh<_i109.UserBloc>(),
          gh<_i415.AdminClientsClient>(),
        ));
    gh.factoryParam<_i1030.AdminCreateOrderBloc, _i908.AdminCreateOrderBlocData,
        dynamic>((
      data,
      _,
    ) =>
        _i1030.AdminCreateOrderBloc(
          gh<_i352.AppRouter>(),
          gh<_i610.IdGenerator>(),
          gh<_i742.AdminCreateOrderClient>(),
          data,
        ));
    gh.factoryParam<_i775.AdminEditStaffMemberBloc,
        _i317.AdminEditStaffMemberBlocData, dynamic>((
      data,
      _,
    ) =>
        _i775.AdminEditStaffMemberBloc(
          gh<_i352.AppRouter>(),
          gh<_i751.Cloudinary>(),
          gh<_i532.AdminEditStaffMemberClient>(),
          data,
        ));
    gh.factoryParam<_i39.AdminCreateClientBloc, _i100.AdminCreateClientBlocData,
        dynamic>((
      data,
      _,
    ) =>
        _i39.AdminCreateClientBloc(
          gh<_i352.AppRouter>(),
          gh<_i610.IdGenerator>(),
          gh<_i980.AdminCreateClientClient>(),
          data,
        ));
    gh.factoryParam<_i672.AdminCreateStaffMemberBloc,
        _i49.AdminCreateStaffMemberBlocData, dynamic>((
      data,
      _,
    ) =>
        _i672.AdminCreateStaffMemberBloc(
          gh<_i352.AppRouter>(),
          gh<_i751.Cloudinary>(),
          gh<_i610.IdGenerator>(),
          data,
          gh<_i89.AdminCreateStaffMemberClient>(),
        ));
    gh.factoryParam<_i108.BookRecordingBloc, _i227.BookRecordingBlocData,
        dynamic>((
      data,
      _,
    ) =>
        _i108.BookRecordingBloc(
          gh<_i352.AppRouter>(),
          gh<_i109.UserBloc>(),
          gh<_i610.IdGenerator>(),
          gh<_i761.BookRecordingClient>(),
          data,
        ));
    gh.factoryParam<_i206.BookRecordingDateBloc,
        _i241.BookRecordingDateBlocData, dynamic>((
      data,
      _,
    ) =>
        _i206.BookRecordingDateBloc(
          gh<_i352.AppRouter>(),
          data,
        ));
    return this;
  }
}

class _$Locator extends _i103.Locator {}
