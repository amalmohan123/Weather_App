import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int temperature = 0;
  int maxTemp = 0;
  String weatherStateName = 'Loading...';
  int windSpeed = 0;
  int humidity = 0;

  var currentDate = 'Loading...';
  String imageUrl = '';
  int woeid = 44418;
  String location = 'London';

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
