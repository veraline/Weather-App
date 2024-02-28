import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;

  const ForecastCard(
      {super.key,
      required this.time,
      required this.icon,
      required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: const Color(0xFF70b4f8),
      child: Container(
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              maxLines: 1,
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 32,
              color: Colors.white,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              temperature,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
