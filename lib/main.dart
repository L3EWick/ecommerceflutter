import 'package:flutter/material.dart';
import 'package:studingwidgets/pages/intro_page.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
      );
  }
}