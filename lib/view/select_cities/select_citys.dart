import 'package:flutter/material.dart';
import 'package:weather_app/model/cities.dart';
import 'package:weather_app/view/home/home.dart';

class SelectCitys extends StatefulWidget {
  const SelectCitys({super.key});

  @override
  State<SelectCitys> createState() => _SelectCitysState();
}

class _SelectCitysState extends State<SelectCitys> {
  @override
  Widget build(BuildContext context) {
    List<Cities> selectedCities = Cities.getSelectedCities();

    List<Cities> cities =
        Cities.citiesList.where((city) => city.isDefault == false).toList();

    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan.shade300,
        centerTitle: true,
        title: Text(
          '${selectedCities.length} Selected',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(top: 20, right: 15, left: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: size.height * .08,
            width: size.width,
            decoration: BoxDecoration(
              border: cities[index].isSelected == true
                  ? Border.all(color: Colors.blue.withOpacity(.5), width: 2)
                  : Border.all(color: Colors.white, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.cyan.shade100.withOpacity(.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        cities[index].isSelected = !cities[index].isSelected;
                      },
                    );
                  },
                  child: Icon(
                    cities[index].isSelected == true
                        ? Icons.check_circle_sharp
                        : Icons.radio_button_off_outlined,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  cities[index].city,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: cities[index].isSelected == true
                          ? Colors.blue
                          : Colors.blueGrey),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
          );
        },
        backgroundColor: Colors.blue.shade300,
        child: const Icon(
          Icons.pin_drop_sharp,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
