import 'package:flutter/material.dart';
import 'package:layout_builder_na_pratica/pages/home/widgets/app_bar/web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text(
            'Flutter',
          ),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          const SizedBox(
            height: 38,
            child: OutlinedButtonTheme(
              data: OutlinedButtonThemeData(
                style: ButtonStyle(
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              child: Text(
                'Fazer login',
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const SizedBox(
            height: 40,
            child: ElevatedButtonTheme(
              data: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
              ),
              child: Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
