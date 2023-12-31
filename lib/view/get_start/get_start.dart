import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/view/select_cities/select_citys.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({
    super.key,
  });

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      // appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/lottie/Animation - 1701413366703.json',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const SelectCitys()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue.shade400),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
    
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
