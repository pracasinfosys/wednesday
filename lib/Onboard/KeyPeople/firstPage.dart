// ignore_for_file: prefer_final_fields, file_names

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wednesday/Widgets/onboardingcard.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  static final PageController _pageController = PageController(initialPage: 0);
  List<Widget> _onBoardingPages = [
    OnBoarding(image: 'pictures/a.jpg',name: "PRACAS UPRETI" ,position:"Business consultant" ,
    description: "Pracas is the human inside the computer. His deep interest is growth hacking business with technology", buttonTtext: "Slide", onPressed: (){
            _pageController.animateToPage(1, duration: Duration.zero, curve: Curves.linear,);
    }),
       OnBoarding(image: 'pictures/b.jpeg',name: "SN METHA" ,position:"Project Manager" ,
    description: "SN leads project,plans,manages deadline and he is also an expert in Quality Assurance ", buttonTtext: "Slide", onPressed: (){
            _pageController.animateToPage(2, duration: Duration.zero, curve: Curves.linear,);
    }),
       OnBoarding(image: 'pictures/c.jpeg',name: "ISHA SUNAM" ,position:"Digital Marketing" ,
    description: "Having keen interest in Digital Marketing, isha handles social media optimization & administration", buttonTtext: "Done ", onPressed: (){
    // Get.to(const HomePage());
    }),

    ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: PageView( controller: _pageController,
            children: _onBoardingPages,)),
            SmoothPageIndicator(
              controller: _pageController,
              count: _onBoardingPages.length,
            
            ),
            // Image.asset('pictures/a.jpg', width: 100, height: 70),
            // const Text("Picture 1"),
          ],
           ),
      ), );
  }
}