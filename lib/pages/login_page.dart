import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

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
          padding: const EdgeInsets.all(20.0),
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
                  var username = usernameController.text;
                  var password = passwordController.text;
                  print('Cek isi: username=$username, password=$password');
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