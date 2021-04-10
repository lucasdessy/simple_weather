import 'package:cloud_functions/cloud_functions.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  FirebaseFunctions get firebaseFunctions => FirebaseFunctions.instance;
}
