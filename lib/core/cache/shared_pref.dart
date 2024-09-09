import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance = SharedPreferencesService._internal();
  late SharedPreferences _prefs;

  factory SharedPreferencesService() {
    return _instance;
  }

  SharedPreferencesService._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setValue<T>(String key, T value) async {
    if (value is String) {
      return await _prefs.setString(key, value);
    } else if (value is int) {
      return await _prefs.setInt(key, value);
    } else if (value is bool) {
      return await _prefs.setBool(key, value);
    } else if (value is double) {
      return await _prefs.setDouble(key, value);
    } else if (value is List<String>) {
      return await _prefs.setStringList(key, value);
    } else {
      throw Exception("Invalid type");
    }
  }

  T? getValue<T>(String key) {
    Object? val = _prefs.get(key);
    return val as T?;
  }

  Future<bool> removeValue(String key) {
    return _prefs.remove(key);
  }
}
