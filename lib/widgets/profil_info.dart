import 'package:flutter/material.dart';

class ProfilInfo extends StatelessWidget {
  ProfilInfo({required this.count, required this.label, super.key});

  final int count;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$count',
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
        )
      ],
    );
  }
}
