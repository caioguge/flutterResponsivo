import 'package:flutter/material.dart';

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
          Expanded(
            child: Container(),
          ),
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
