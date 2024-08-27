import 'package:flutter/material.dart';

class Forms1Widget extends StatefulWidget {
  const Forms1Widget({super.key});

  @override
  State<Forms1Widget> createState() => _Forms1WidgetState();
}

class _Forms1WidgetState extends State<Forms1Widget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  //-----------FUNCTIONS----------------
  
  trySubmit () {
  final isValid = _formKey.currentState!.validate();
    if(isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else{
      print('Error');
    }
  }
  
  submitForm () {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade200,
        title: Center(child: Text('F O R M S  W I D G E T')),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Form(
            key: _formKey,
            child: Wrap(
              children: [
                TextFormField(
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'First Name Should not be Empty';
                    } else {
                      null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                SizedBox(height: 80),
                TextFormField(
                  key: ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Last Name Should not be Empty';
                    } else {
                      null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                SizedBox(height: 80),
                TextFormField(
                  key: ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Email Should not be Empty';
                    } else {
                      null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                SizedBox(height: 80),
                TextFormField(
                  obscureText: true,
                  key: ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length<=5) {
                      return 'Password Should be Six characters';
                    } else {
                      null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: TextButton(onPressed: (){
                    trySubmit();
                  },
                      child: Text('S U B M I T'),),
                ),
              ],
            )),
      ),
    );
  }
}
