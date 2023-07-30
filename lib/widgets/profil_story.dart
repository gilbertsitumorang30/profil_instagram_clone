import 'package:flutter/material.dart';

class ProfilStory extends StatelessWidget {
  const ProfilStory({
    this.image =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Plus_symbol.svg/1200px-Plus_symbol.svg.png',
    this.label = 'New',
    super.key,
  });

  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(70 / 2),
              ),
            ),
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.grey.shade300,
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(65 / 2),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.black87, fontSize: 12),
        )
      ],
    );
  }
}
