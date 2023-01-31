import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecordListTile extends StatelessWidget {
  const RecordListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ListTile(
          leading: Text(DateFormat('EEE, MMM d').format(DateTime.now())),
          title: const Text('75'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
