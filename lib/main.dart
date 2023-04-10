import 'package:flutter/material.dart';
import 'package:flutter_fer_02/config/theme/app_theme.dart';
import 'package:flutter_fer_02/presentation/Screems/chat/chat_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes/No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 8).theme(),
      home: const ChatScreen(),
    );
  }
}
