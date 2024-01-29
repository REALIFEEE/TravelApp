import 'package:flutter/material.dart';
import 'package:travelapp/variables.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text('Detail'),
      ),
      body: const Center(child: Text('ini detail')),
    );
  }
}