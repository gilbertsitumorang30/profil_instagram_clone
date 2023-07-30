import 'package:flutter/material.dart';

class ProfilPicture extends StatelessWidget {
  const ProfilPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.orange]),
            borderRadius: BorderRadius.circular(100 / 2),
          ),
        ),
        Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.white),
            color: Colors.grey.shade300,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://repository-images.githubusercontent.com/385952348/da10b111-20c2-4af4-bfe5-47bc21f6a06a'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(95 / 2),
          ),
        )
      ],
    );
  }
}
