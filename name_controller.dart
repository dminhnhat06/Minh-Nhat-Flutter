import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NameController extends GetxController {
  var names = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadNames();
  }

  Future<void> loadNames() async {
    final prefs = await SharedPreferences.getInstance();
    names.value = prefs.getStringList('usernames') ?? [];
  }

  Future<void> addName(String newName) async {
    if (newName.trim().isEmpty) return;

    final prefs = await SharedPreferences.getInstance();
    names.add(newName);
    await prefs.setStringList('usernames', names);
  }

  Future<void> removeName(String nameToRemove) async {
    final prefs = await SharedPreferences.getInstance();
    names.remove(nameToRemove);
    await prefs.setStringList('usernames', names);
  }
}
