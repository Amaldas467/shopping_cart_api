import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_api/controller/homescreencontroller.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  fetchdata() {
    Provider.of<Homescreencontroller>(context, listen: false).fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    final homescreenstate = Provider.of<Homescreencontroller>(context);
    return Scaffold();
  }
}
