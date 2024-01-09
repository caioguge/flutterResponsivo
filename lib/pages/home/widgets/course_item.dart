import 'package:auto_size_text/auto_size_text.dart';
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
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return const AutoSizeText(
                'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
                minFontSize: 3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              );
            },
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
