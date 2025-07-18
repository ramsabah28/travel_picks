import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String country;
  final String weatherDescription;
  final int temperature;
  final IconData weatherIcon;

  const WeatherCard({
    Key? key,
    required this.country,
    required this.weatherDescription,
    required this.temperature,
    required this.weatherIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(weatherIcon, size: 48, color: Colors.blueAccent),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wetter in $country',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  '$temperature°C, $weatherDescription',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 