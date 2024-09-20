import 'package:flutter/material.dart';
import 'package:footwearhub/pages/intro_page.dart';

void main() {
  runApp(const FootWear());
}

class FootWear extends StatelessWidget {
  const FootWear({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
  
  
}
