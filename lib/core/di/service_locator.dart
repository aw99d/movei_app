import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'service_locator.config.dart';

final serverLocator = GetIt.instance;

@injectableInit
Future<void> configureDependencies()=> serverLocator.init();