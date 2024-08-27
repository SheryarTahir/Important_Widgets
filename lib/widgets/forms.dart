import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';

  String lastname = '';

  String email = '';

  String passwrod = '';

  final _formKey = GlobalKey<FormState>();

  //----------------FUNCTIONS------------------
  trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print('Error');
    }
  }

  submitForm() {
    print(firstname);
    print(lastname);
    print(email);
    print(passwrod);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: const Center(child: Text('F O R M S')),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
            key: _formKey,
            child: Wrap(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter First Name',
                      labelText: 'Name',
                      icon: Icon(Icons.person)),
                  key: const ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'First name Should not be Empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter Last Name',
                      labelText: 'Last Name',
                      icon: Icon(Icons.padding_sharp)),
                  key: const ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Last name Should not be Empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      icon: Icon(Icons.email)),
                  key: const ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Email Should not be Empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Enter Your Password',
                      icon: Icon(Icons.password)),
                  key: const ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return 'Password Should not be less than 6 characters';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    passwrod = value.toString();
                  },
                ),
                const SizedBox(
                  height: 200,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      trySubmit();
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class FormsWidget extends StatefulWidget {
//   const FormsWidget({super.key});
//
//   @override
//   State<FormsWidget> createState() => _FormsWidgetState();
// }
//
// class _FormsWidgetState extends State<FormsWidget> {
//   String firstaname = '';
//   String lastname = '';
//   String email = '';
//   String password = '';
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple.shade200,
//         title: const Text('Forms'),
//       ),
//       body: Container(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'Enter First Name',
//                 ),
//                 key: const ValueKey('firstname'),
//                 validator: (value) {
//                   if (value.toString().isEmpty) {
//                     return 'First Name Should Not Be Empty';
//                   } else {
//                     return null;
//                   }
//                 },
//                 onSaved: (value) {
//                   firstaname = value.toString();
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
