import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_api/controller/homescreencontroller.dart';
import 'package:shopping_cart_api/view/homescreen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homescreencontroller(),
        )
      ],
      child: MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
