import 'dio_util.dart';
import 'services/login_service.dart';

/// 网络层统一封装。各种 Service 需要有一个统一的封装类，作为网络层统一的能力提供。
class AppServices {
  static late DioUtil _dio;

  static late LoginService loginService;

  static void init(DioUtil dio) {
    _dio = dio;
    loginService = LoginService(_dio);
  }
}
