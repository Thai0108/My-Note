import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SSecureStorage {
  SSecureStorage._();

  static const _androidOptions = AndroidOptions(encryptedSharedPreferences: true);
  static const _iosOptions = IOSOptions(accessibility: KeychainAccessibility.first_unlock);
  static late FlutterSecureStorage _secureStorage;

  static FlutterSecureStorage get instant => _secureStorage;

  static Future<void> init() async {
    _secureStorage = const FlutterSecureStorage(
      aOptions: _androidOptions,
      iOptions: _iosOptions,
    );
  }
}
