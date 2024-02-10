import 'package:flutter/material.dart';

class NavbarWiget extends StatelessWidget {
  const NavbarWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      shape: CircularNotchedRectangle(),
      notchMargin: 11,
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        height: 50.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.shopify_rounded,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
