import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/weather_info.dart';

import '../widgets/no_weather.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D47A1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Weather app',
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                (MaterialPageRoute(
                  builder: (context) {
                    return SearchView();
                  },
                )),
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.blue,

            ),
          )
        ],
      ),
      body:

      Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF1A237E),
        ),
        child: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitialState) {
              return NoWeather();
            } else if (state is WeatherLoadedState) {
              return WeatherInfo(
                weatherModel: state.weatherModel,
              );
            } else {
              return Text('oops there was an error');
            }
          },
        ),
      ),
    );
  }
}
