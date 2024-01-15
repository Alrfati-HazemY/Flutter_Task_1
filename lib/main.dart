import 'package:flutter/material.dart';
import 'package:flutter_task_1/screens/vegetables.dart';

final theme = ThemeData().copyWith(
  colorScheme: ThemeData().colorScheme.copyWith(
      primary: const Color.fromRGBO(45, 12, 87, 1),
      onPrimaryContainer: const Color.fromRGBO(217, 208, 227, 1),
      secondary: const Color.fromRGBO(149, 134, 168, 1),
      background: const Color.fromRGBO(246, 245, 245, 1),
      tertiary: const Color.fromRGBO(11, 206, 131, 1)),
  textTheme: ThemeData().textTheme.copyWith(
        titleLarge: ThemeData().textTheme.titleLarge!.copyWith(
              color: const Color.fromRGBO(45, 12, 87, 1),
              letterSpacing: 0.41,
            ),
        bodyMedium: ThemeData().textTheme.bodyMedium!.copyWith(
              color: const Color.fromRGBO(149, 134, 168, 1),
              letterSpacing: -0.41,
            ),
      ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const VegetablesScreen(),
    );
  }
}
