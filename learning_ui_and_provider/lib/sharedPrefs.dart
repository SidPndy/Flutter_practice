import 'package:shared_preferences/shared_preferences.dart';

import 'addContact.dart';

class Myprefs {
  var num = AddContact.number;
  var nam = AddContact.name;
  Myprefs(this.num, this.nam);
}

getMyPref() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  List<String>? a = pref.getStringList('name');
  List<String>? b = pref.getStringList('number');
  return Myprefs(a!, b!);
}

setMyPrefs() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setStringList('name', AddContact.name);
  pref.setStringList('number', AddContact.number);
}


  // dataFromSharedPreferences() {
  //   List<String>? a = getMyPref() ?? [];
    
  // }