import 'package:flutter/material.dart';
import 'package:layout_builder_na_pratica/breakpoints.dart';
import 'package:layout_builder_na_pratica/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16,
          ),
          physics: const NeverScrollableScrollPhysics(),
          // Quando "shrinkWrap" é definido como verdadeiro,
          // o ListView ocupará apenas o espaço necessário.
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CourseItem();
          },
        );
      },
    );
  }
}
