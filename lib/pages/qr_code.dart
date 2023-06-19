
import 'package:flutter/material.dart';

class PageCode extends StatefulWidget {
  const PageCode({super.key});

  @override
  State<PageCode> createState() => _PageCodeState();
}

class _PageCodeState extends State<PageCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Codigo QR'),
        backgroundColor: Colors.orange,
      ),
    );
  }
}