import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:start_nivesh/HomeScreen.dart';
import 'package:start_nivesh/RoleSelection.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Welcome to Start Nivesh',
      body: 'Explore a world of financial opportunities with Start Nivesh.',
      image: Center(
        child: Image.asset('assets/START.png',
          height: 260,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Discover Investments',
      body: 'Learn about various investment options and strategies.',
      image: Center(
        child: Image.asset(
          'assets/investment.png',
          height: 250,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Plan Your Financial Future',
      body: 'Take control of your financial future with Start Nivesh.',
      image: Center(
        child: Image.asset(
          'assets/line-graph.png',
          height: 250,
        ),
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
        title: const Text('  '),
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
        done: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const RoleSelection()),
              );
            },
        child: const Text("Get Started", style: TextStyle(fontSize: 15),)),
        showSkipButton: true,
        skip: const Text('Skip', style: TextStyle(fontSize: 16)),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward, size: 20),
        onDone: () => onDone(context),
      ),
    );
  }

  void onDone(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => BottomNavigationBarExample()),
    );
  }
}
