import 'package:flutter/material.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  String firstaname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: const Text('Forms'),
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter First Name',
                ),
                key: const ValueKey('firstname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'First Name Should Not Be Empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstaname = value.toString();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
