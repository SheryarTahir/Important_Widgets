import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({super.key});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {

  String selectedItem = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop Down List'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 70,
              // color: Colors.red,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                isExpanded: true,
                value: selectedItem,
                onChanged: (String? newvalue) {
                  // Handle dropdown item change here
                  setState(() {
                    selectedItem = newvalue!;
                  });
                },
                // Map the list of items to DropdownMenuItem widgets
                items: <String>[
                  'Orange',
                  'Apple',
                  'Banana',
                  'Mango',
                  'Grapes',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
