import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.yellow,
              Colors.blue,
            ],
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Enter the city',
                  style: TextStyle(
                      color: Colors.blue, fontFamily: 'Pacifico', fontSize: 25),
                ),
                Text(
                  'you wish to get its weather',
                  style: TextStyle(
                      color: Colors.blue, fontFamily: 'Pacifico', fontSize: 25),
                ),
                SizedBox(
                  height: 200,
                ),
                TextField(
                  onSubmitted: (value) async {
                    var getWeatherCubit =
                    BlocProvider.of<GetWeatherCubit>(context);
                    getWeatherCubit.getWeather(cityName: value);

                    Navigator.pop(context);
                  },
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                      label: Text('Search'),
                      labelStyle: TextStyle(color: Color(0xFF0D47A1),),
                      hintText: 'Enter the city name',
                      hintStyle: TextStyle(color: Color(0xFF0D47A1),),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Color(0xFF0D47A1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0xFF0D47A1),)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0xFF0D47A1),))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
