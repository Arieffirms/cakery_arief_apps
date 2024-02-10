import 'package:cakery_arief/widget/navbar_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            "Arief Cakery",
            style: TextStyle(
              fontFamily: 'Varela',
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavbarWiget(),
    );
  }
}
