import 'package:flutter/material.dart';
import 'package:kas/pages/login_page.dart';
import 'package:kas/pages/main_page.dart';
import 'package:kas/pages/profile_pages.dart';
import 'package:kas/providers/post_provider.dart';
import 'package:provider/provider.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();

  runApp(MyKas());
}

class MyKas extends StatelessWidget {
  const MyKas({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
