library core_module;

import 'package:core_module/src/file_picker/file_picker_impl.dart';
import 'package:dio/dio.dart';

import 'core_module.dart';
import 'src/cache/shared_preferences_impl.dart';
import 'src/client/dio/rest_client_dio_impl.dart';

export 'package:auto_injector/auto_injector.dart';
export 'package:either_dart/either.dart';
export 'package:lottie/lottie.dart';
export 'package:mocktail/mocktail.dart';
export 'package:routefly/routefly.dart';
export 'package:uicons/uicons.dart';
export 'package:uuid/uuid.dart';

export 'src/adapters/auth/user_adapter.dart';
export 'src/adapters/cpf_cnpj_adapter.dart';
export 'src/adapters/currency_adapter.dart';
export 'src/adapters/date_adapter.dart';
export 'src/adapters/phone_adapter.dart';
export 'src/cache/cache.dart';
export 'src/client/client.dart';
export 'src/controllers/controllers.dart';
export 'src/entities/entity.dart';
export 'src/entities/auth/user_entity.dart';
export 'src/entities/request/request_entity.dart';
export 'src/entities/request/request_help_type.dart';
export 'src/entities/request/request_status_entity.dart';
export 'src/entities/request/god_father.dart';
export 'src/errors/errors.dart';
export 'src/helpers/validators_helper.dart';
export 'src/states/base_state.dart';
export 'src/types/types.dart';
export 'src/types/unit.dart';
export 'src/file_picker/i_file_picker.dart';
export 'src/helpers/currency_format_helper.dart';

final coreModule = AutoInjector(
  on: (injector) {
    injector.addSingleton<ICache>(SharedPreferencesImpl.new);
    injector.add<Dio>(DioFactory.dio);
    injector.addSingleton<IRestClient>(RestClientDioImpl.new);
    injector.add<IFilePickerService>(FilePickerServiceImpl.new);
  },
);
