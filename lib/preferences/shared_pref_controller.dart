import 'package:shared_preferences/shared_preferences.dart';

enum keyPref { loggedIn, email }

class SharedPrefController {
  static final SharedPrefController _instance = SharedPrefController._();
  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
  }

  SharedPrefController._();

  Future<void> initPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String email}) async {
    await _sharedPreferences.setBool(keyPref.loggedIn.toString(), true);
    await _sharedPreferences.setString(keyPref.email.toString(), email);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(keyPref.loggedIn.toString()) ?? false;

  String get email =>
      _sharedPreferences.getString(keyPref.email.toString()) ?? '';

  Future<bool> removeEmail() async {
    return await _sharedPreferences.remove(keyPref.email.toString());
  }

  Future<bool> remove({required String key}) async {
    if (_sharedPreferences.containsKey(key)) {
      return await _sharedPreferences.remove(key);
    }
    return false;
  }

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
