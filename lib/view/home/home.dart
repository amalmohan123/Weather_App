import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:weather_app/model/cities.dart';

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

  var selectedCities = Cities.getSelectedCities();
  List<String> cities = ['London'];

  List consolidateWeatherList = [];

  String searchLocationUrl =
      'https://api.openweathermap.org/data/2.5/weather?q=London&appid=0df7912456bcb5dcf049ec80738db9f9';
  String searchWeatherUrl =
      'https://api.openweathermap.org/data/2.5/weather?q=London&appid=';

  void fechLocation(String location) async {
    var searchResult = await http.get(
      Uri.parse(searchLocationUrl),
    );
    var result = json.decode(searchResult.body);
    print(result);
  }

  @override
  void initState() {
    fechLocation(cities[0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('hbahb'),
      ),
    );
  }
}
