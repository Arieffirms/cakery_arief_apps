import 'package:cakery_arief/widget/navbar_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.amber,
          ),
        ),
        title: const Text(
          "Arief Cakery",
          style: TextStyle(
            fontFamily: 'Varela',
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.notifications_active_outlined),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.fastfood,
          size: 33,
          color: Colors.white,
        ),
        shape: CircleBorder(),
      ),
      bottomNavigationBar: const NavbarWiget(),
      body: ListView(
        padding: EdgeInsets.only(),
      ),
    );
  }
}
