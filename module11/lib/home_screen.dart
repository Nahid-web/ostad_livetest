import 'package:flutter/material.dart';
import 'package:module11/weather_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Info App'),
      ),
      body: ListView.separated(
        itemCount: weatherList.length,
        itemBuilder: (context, index) {
          final currentWeather = weatherList[index];
          return ListTile(
            title: Text('City: ${currentWeather["city"]}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Temperature: ${currentWeather["temperature"]}'),
                Text('Condition: ${currentWeather["condition"]}'),
                Text('Humidity: ${currentWeather["humidity"]}'),
                Text('Wind Speed: ${currentWeather["windSpeed"]}'),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
