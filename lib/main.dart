import 'package:flutter/material.dart';
import 'package:footwearhub/models/cart.dart';
import 'package:footwearhub/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FootWear());
}

class FootWear extends StatelessWidget {
  const FootWear({super.key});

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
