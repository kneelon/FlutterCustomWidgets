import 'package:custom_widgets/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CustomWidgets());
}

class CustomWidgets extends StatefulWidget {
  const CustomWidgets({Key? key}) : super(key: key);

  @override
  State<CustomWidgets> createState() => _CustomWidgetsState();
}

class _CustomWidgetsState extends State<CustomWidgets> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

