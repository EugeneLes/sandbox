// ignore_for_file: implementation_imports
import 'package:injectable/injectable.dart';

import '../shared/di/di.dart';
import 'di.config.dart';

@InjectableInit()
Future<void> configureDependencies() => get.init();
