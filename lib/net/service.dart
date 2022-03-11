import 'dio_util.dart';

abstract class Service {
  final DioUtil dio;

  const Service(this.dio);
}
