import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_first_long_example/controller.dart';
import 'package:getx_first_long_example/models/record.dart';
import 'package:intl/intl.dart';

class RecordListTile extends StatelessWidget {
  RecordListTile({super.key, required this.record});

  final Record record;
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ListTile(
          leading: _buildDate(),
          title: _buildWeight(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Row _buildIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit),
          color: Colors.grey,
        ),
        IconButton(
          onPressed: () {
            _controller.deleteRecord(record);
          },
          icon: const Icon(Icons.delete),
          color: Colors.red,
        ),
      ],
    );
  }

  Center _buildWeight() {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Text(
        record.weight.toString(),
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ));
  }

  Text _buildDate() => Text(DateFormat('EEE, MMM d').format(record.dateTime));
}
