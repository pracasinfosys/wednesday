// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  final String image,name,position,description,buttonTtext;
  final Function onPressed;
  const OnBoarding({super.key, required this.image,
  required this.name, required this.position, required this.description,required this.buttonTtext, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.80,
      width: MediaQuery.sizeOf(context).width,
     child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Padding(
           padding: const EdgeInsets.all(50.0),
           child: Image.asset(image,
           fit: BoxFit.cover,),
         ),
        Column(
            children:  [
              Text(name,textAlign: TextAlign.center, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(position, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              ),
                  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(description , style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
              ),
            ],
         ),
         MaterialButton(onPressed: ()=> onPressed(),
         color: Theme.of(context).colorScheme.primary,
          child: Text( buttonTtext, style: const TextStyle(color: Colors.white),)

         )
  
       ],), 
    );
  }
}