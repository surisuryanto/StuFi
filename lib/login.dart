import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 500,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'masukan username anda',
                    labelText: 'User Name',
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 5,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'masukan 7 digit password anda',
                    labelText: 'Password',
                    icon: Icon(Icons.vpn_key_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                  autofocus: true,
                  // obscureText: true,
                  obscuringCharacter: 'x',
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('isi'),
                )
              ],
            ),
          )),
    );
  }
}
