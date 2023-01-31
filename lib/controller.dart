import 'package:get/get.dart';
import 'package:getx_first_long_example/models/record.dart';

class Controller extends GetxController {
  var records = <Record>[].obs;

  void addRecord() {
    records.add(
      Record(weight: 80, dateTime: DateTime.now(), note: 'XXXXX'),
    );
  }

  void deleteRecord(Record record) {
    records.remove(record);
  }
}
