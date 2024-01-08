import 'package:flutter/material.dart';
import 'package:layout_builder_na_pratica/breakpoints.dart';
import 'package:layout_builder_na_pratica/pages/home/widgets/app_bar/web_app_dar.dart';
import 'package:layout_builder_na_pratica/pages/home/widgets/sections/advantages_section.dart';
import 'package:layout_builder_na_pratica/pages/home/widgets/sections/top_section.dart';
import 'widgets/app_bar/mobile_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakPoint
              ? const PreferredSize(
                  preferredSize: Size(
                    double.infinity,
                    56,
                  ),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(
                    double.infinity,
                    72,
                  ),
                  child: WebAppBar(),
                ),
          drawer:
              constraints.maxWidth < mobileBreakPoint ? const Drawer() : null,
          // Limitando a largura do conteúdo e alinhando ele ao centro.
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
