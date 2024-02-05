import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:start_nivesh/HomeScreen.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'First Page',
      body: 'Description',
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("Let's go"),
      ),
      image: Center(
        child: Image.network(
            'https://images.pexels.com/photos/1092644/pexels-photo-1092644.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Second Page',
      body: 'Description',
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("Let's go"),
      ),

      image: Center(
        child: Image.network(
            'https://images.pexels.com/photos/267350/pexels-photo-267350.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Third Page',
      body: 'Description',
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text("Let's go"),
      ),
      image: Center(
        child: Image.network(
            'https://images.pexels.com/photos/267389/pexels-photo-267389.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Boarding'),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Colors.lightBlue,
          activeSize: Size.square(15),
          activeColor: Colors.lightBlue,
        ),
        showDoneButton: true,
        done: const Text("Done", style: TextStyle(fontSize: 20),),
        showSkipButton: true,
        skip: const Text('Skip', style: TextStyle(fontSize: 20)),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward, size: 20),
        onDone: () => onDone(context),
      ),
    );
  }

  void onDone(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
