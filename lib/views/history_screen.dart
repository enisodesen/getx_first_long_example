import 'package:flutter/material.dart';
import 'package:getx_first_long_example/controller.dart';
import 'package:get/get.dart';
import 'package:getx_first_long_example/models/record.dart';
import 'package:getx_first_long_example/widgets/record_list_tile.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('History'),
          actions: [
            IconButton(
                onPressed: _controller.addRecord, icon: const Icon(Icons.add)),
          ],
        ),
        body: records.isEmpty
            ? const Center(
                child: Text(
                  'Please Add a Record...',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              )
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: records
                    .map((record) => RecordListTile(record: record))
                    .toList(),
              ),
      ),
    );
  }
}
