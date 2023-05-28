import 'dart:convert';

import 'package:not_a_note/component/shared/share_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BPrefs {
  static late SharedPreferences _pref;

  static Future<void> init() async => _pref = await SharedPreferences.getInstance();

  static dynamic get(SPrefs key) => _pref.get(key.name);

  static int? getInt(SPrefs key) => _pref.getInt(key.name);

  static bool? getBool(SPrefs key) => _pref.getBool(key.name);

  static double? getDouble(SPrefs key) => _pref.getDouble(key.name);

  static String? getString(SPrefs key) => _pref.getString(key.name);

  static List<String>? getStringList(SPrefs key) => _pref.getStringList(key.name);

  static Future<bool> setBool(SPrefs key, bool value) async => await _pref.setBool(key.name, value);

  static Future<bool> setDouble(SPrefs key, double value) async => await _pref.setDouble(key.name, value);

  static Future<bool> setInt(SPrefs key, int value) async => await _pref.setInt(key.name, value);

  static Future<bool> setString(SPrefs key, String value) async => await _pref.setString(key.name, value);

  static Future<bool> setStringList(SPrefs key, List<String> value) async => await _pref.setStringList(key.name, value);

  static void clear() => _pref.clear();

  static void reload() => _pref.reload();

  static Set<String> getKeys() => _pref.getKeys();

  static void remove(SPrefs key) => _pref.remove(key.name);

  static void setObject<O>(O object, SPrefs key) {
    setString(key, jsonEncode(object));
  }

  static Future<Map<String, dynamic>> getObject(SPrefs key) async {
    var data = getString(key);
    return jsonDecode(data!);
  }
}
