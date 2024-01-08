import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto-compress',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          'Criação de Apps Android e iOS com Flutter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const Text(
          'Daniel Ciolfi',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
