import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

class AddRecordView extends StatefulWidget {
  const AddRecordView({super.key});

  @override
  State<AddRecordView> createState() => _AddRecordViewState();
}

class _AddRecordViewState extends State<AddRecordView> {
  late int _selectedValue = 70;

  late DateTime? _selectedDateTime = DateTime.now();

  void pickDate(BuildContext context) async {
    var initialDate = DateTime.now();
    _selectedDateTime = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: initialDate.subtract(const Duration(days: 365)),
          lastDate: initialDate.add(const Duration(days: 30)),
          builder: (context, child) {
            //
            return Theme(
                data: ThemeData.light().copyWith(
                    colorScheme: const ColorScheme(
                  brightness: Brightness.light,
                  primary: Colors.black87,
                  onPrimary: Colors.white,
                  secondary: Colors.black,
                  onSecondary: Colors.black,
                  error: Colors.black,
                  onError: Colors.black,
                  background: Colors.black,
                  onBackground: Colors.black,
                  surface: Colors.black,
                  onSurface: Colors.black,
                )),
                child: child ?? const Text(''));
          },
        ) ??
        _selectedDateTime;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Record'),
      ),
      body: Column(children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.weightScale,
                  size: 40,
                ),
                Stack(alignment: Alignment.bottomCenter, children: [
                  NumberPicker(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey, width: 2)),
                      itemCount: 3,
                      itemWidth: 80,
                      axis: Axis.horizontal,
                      minValue: 0,
                      maxValue: 300,
                      value: _selectedValue,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue = value;
                        });
                      }),
                  const Icon(
                    FontAwesomeIcons.chevronUp,
                    size: 16,
                  ),
                ]),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pickDate(context);
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesomeIcons.calendar,
                    size: 40,
                  ),
                  Expanded(
                      child: Text(
                    DateFormat('EEE, MMM d hh').format(_selectedDateTime!),
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: const Text('Note Card'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: const Text('Save Record'),
        ),
      ]),
    );
  }
}
