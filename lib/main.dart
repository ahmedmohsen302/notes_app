import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/home_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomeView.id: (context) => HomeView()},
      initialRoute: HomeView.id,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: kPrimaryFont),
      debugShowCheckedModeBanner: false,
    );
  }
}
