import 'package:injectable/injectable.dart';

@LazySingleton()
class SandBoxRepository {
  @PostConstruct(preResolve: true)
  Future<void> init() async {}
}
