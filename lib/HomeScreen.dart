import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(

          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Start Nivesh",style: TextStyle(color: Colors.white ,fontSize: 20,fontWeight: FontWeight.w400,),),
        backgroundColor: Colors.lightBlue.shade300,
        centerTitle: true,
        elevation: double.infinity,
      ),

    );

  }
}
