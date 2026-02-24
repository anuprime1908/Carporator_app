import 'package:carporater/features/complaints/presentation/screens/list_complaints.dart';
import 'package:flutter/material.dart';


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

