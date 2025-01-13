import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          children: [
            Text(
              weatherModel.cityName,
              style: TextStyle(
                  fontSize: 66, color: kTextColor, fontFamily: 'Pacifico'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(weatherModel.image),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '${weatherModel.temp}',
                  style: TextStyle(
                      color: kTextColor, fontSize: 60, fontFamily: 'Pacifico'),
                ),
                Spacer(),
                Text(
                  weatherModel.weatherCondition,
                  style: TextStyle(
                      color: kTextColor, fontSize: 30, fontFamily: 'Pacifico'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Max Temp : ${weatherModel.maxTemp}',
              style: TextStyle(
                  color: kTextColor, fontSize: 35, fontFamily: 'Pacifico'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Min Temp : ${weatherModel.minTemp}',
              style: TextStyle(
                  color: kTextColor, fontSize: 35, fontFamily: 'Pacifico'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'last update at ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: TextStyle(
                  color: kTextColor, fontSize: 28, fontFamily: 'Pacifico'),
            )
          ],
        ),
      ),
    );
  }
}
