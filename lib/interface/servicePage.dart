// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
    
          children: [
            const SizedBox( height:250),
            Image.asset('pictures/apple.jpeg'),
            const Text("Steve Jobs", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 
             const Text("(1955-2011)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
          ],
        ),
      ),
    );
  }
}
