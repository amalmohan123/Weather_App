import 'package:flutter/material.dart';
import 'package:weather_app/model/cities.dart';

class SelectCitys extends StatelessWidget {
  const SelectCitys({super.key});

  @override
  Widget build(BuildContext context) {
    List<Cities> cities =
        Cities.citiesList.where((city) => city.isDefault == false).toList();
    List<Cities> selectedCities = Cities.getSelectedCities();

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          selectedCities.length.toString() + ' Selected',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(top: 20, right: 15, left: 15),
              // padding: EdgeInsets.symmetric(horizontal: 20),
              height: size.height * .08,
              width: size.width,
              decoration: BoxDecoration(
                border: cities[index].isSelected == true
                    ? Border.all(color: Colors.blue.withOpacity(.5), width: 2)
                    : Border.all(
                        color: const Color.fromARGB(255, 237, 83, 83),
                      ),
              ),
            );
          }),
    );
  }
}
