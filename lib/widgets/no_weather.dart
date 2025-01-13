import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/weather_conditions.jpg',
              scale: 10,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Welcome To Weather App',
              style: TextStyle(
                  color: Colors.blue, fontSize: 26, fontFamily: 'Pacifico'),
            ),
            Text(
              'Search for a city',
              style: TextStyle(
                  color: Colors.blue, fontSize: 26, fontFamily: 'Pacifico'),
            ),
          ],
        ),
      ),
    );
  }
}
