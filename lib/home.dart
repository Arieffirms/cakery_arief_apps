import 'package:cakery_arief/screen/cakery_page.dart';
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
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(
            height: 15.0,
          ),
          Text(
            'menu',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 25),
            unselectedLabelColor: Colors.black12,
            tabs: [
              Tab(
                child: Text(
                  'Cake Box',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Cake Slice',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Chiffon',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                CookiePage(),
                CookiePage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
