import 'package:flutter/material.dart';
import 'package:getx_first_long_example/widgets/record_list_tile.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('History'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
        ],
      ),
    );
  }
}
