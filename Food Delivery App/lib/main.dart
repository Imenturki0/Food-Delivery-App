
import 'package:flutter/material.dart';
import 'package:chat_app/auth/login_or_register.dart';
import 'package:chat_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(
   ChangeNotifierProvider(
    create: (context)=> ThemeProvider(),
    child: const MyApp(),
    )
    );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {




  @override
  Widget build(BuildContext context) {
    
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
