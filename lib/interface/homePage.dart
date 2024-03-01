// ignore_for_file: file_names

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Trio"),
    
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
           
           SizedBox(
            // width: 300,
            // height: 200,
             child: Row(
               children: [
                 Card(child: Column(
                
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Image.asset('pictures/a.jpg', width: 100, height: 70),
                     ),
                      const Text("Picture 1"),
                   ],
                 )),
                 Card(child: Column(
                   children: [
                    
                     Image.asset('pictures/picture.png', width: 100, height: 70),
                         const Text("Picture 1"),
                   ],
                 )),
                 Card(child: Column(
                   children: [
                     Image.asset('pictures/picture.png', width: 100, height: 70),
                         const Text("Picture 1"),
                   ],
                 )),
               ],
             ),
           ),

      
          ]
              ),
        ),
    );
  }
}