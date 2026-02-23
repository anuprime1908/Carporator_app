import 'package:carporater/presentation/screens/complain_details.dart';
import 'package:carporater/presentation/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:carporater/presentation/screens/list_complaints.dart';
import 'package:carporater/widgets/main_scaffold.dart';
//import 'widgets/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(15, 82, 114, 1),
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ListComplaints(),
    );
  }
}

