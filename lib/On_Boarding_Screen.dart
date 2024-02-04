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
            'https://images.pexels.com/photos/20069294/pexels-photo-20069294/free-photo-of-window-with-lace-curtains-and-flowers-on-the-wall.jpeg'),
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
            'https://images.pexels.com/photos/18099926/pexels-photo-18099926/free-photo-of-woman-in-tied-crop-top-crouching-on-white-spot.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
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
            'https://images.pexels.com/photos/20087121/pexels-photo-20087121/free-photo-of-a-woman-in-a-black-dress-sitting-on-a-chair.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
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
