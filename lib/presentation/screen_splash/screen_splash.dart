import 'package:exptracker/presentation/screen_main_tab/screen_main_tab.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    delay(context);
    return Scaffold(
      body: Center(
        child: Image.asset('assets/25759252_7144902.jpg'),
      ),
    );
  }

  delay(cntx) async {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(cntx).pushAndRemoveUntil(MaterialPageRoute(builder:(context) => ScreenMainTab(), ), (route) => false);
    });
  }
}
