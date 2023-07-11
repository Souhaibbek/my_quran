import 'package:hive/hive.dart';

void saveDataToLocal(List<dynamic> data, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(data);
}
