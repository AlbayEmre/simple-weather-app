import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_block_app/Screens/Home_Screen.dart';
import 'package:weather_block_app/bloc/weather_block_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather_App',
      home: BlocProvider<WeatherBlockBloc>(
        create: (context) => WeatherBlockBloc()..add(FeatchWeather()),
        child: HomeScreen(),
      ),
    );
  }
}
