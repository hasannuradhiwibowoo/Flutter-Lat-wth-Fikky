import 'package:flutter/material.dart';
import 'package:kas/pages/home_page.dart';
import 'package:kas/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //logo
              //Image.asset('assets/image/logo_kas.png'),
              Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
              //Login header teks
              Text('Silahkan Masuk'),
              //kolom email
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //kolom password
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border:OutlineInputBorder(),
                )
              ),
              //tombol login
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (){
                  final email = usernameController.text.trim();
                  final password = passwordController.text;
                  if (email == 'anjay@gmail.com' && password == 'atmin123') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => MainPage()),
                    );
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('email/password salah'))
                    );
                  }
                }, 
                child: Text('Login')
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text('Lupa password'),
                onPressed: (){},
              ),
              SizedBox(
                height: 10,
              ),
              OutlinedButton(
                child : Text('Daftar'),
                onPressed: (){},
              )
            ],
          ),
        )
      ),
    );
  }
}