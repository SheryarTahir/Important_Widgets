import 'package:flutter/material.dart';

class Dropdownlistprac extends StatefulWidget {
  const Dropdownlistprac({super.key});

  @override
  State<Dropdownlistprac> createState() => _DropdownlistpracState();
}

class _DropdownlistpracState extends State<Dropdownlistprac> {

  String selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: Text('Drop Down List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton<String>(
              value: selectedValue,
                isExpanded: true,
                items: [
                  'Orange',
                  'Mango',
                  'Banana',
                  'Apple',
                  'Grapes'
                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                      child: Text(value));
                }).toList(),
                onChanged: (String? newvalue){
                  setState(() {
                    selectedValue = newvalue!;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
