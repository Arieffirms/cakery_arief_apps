import 'package:cakery_arief/data/cake.dart';
import 'package:cakery_arief/screen/cake_detail.dart';
import 'package:flutter/material.dart';

class CookiePage extends StatelessWidget {
  const CookiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return _buildCard(listCakes[index], context);
              },
              itemCount: listCakes.length,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    Cake cake,
    context,
  ) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CakeryDetail(
                  assetPath: cake.imageUrl,
                  cookieprice: cake.price,
                  cookiename: cake.name,
                );
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    cake.isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.pink,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.pinkAccent,
                          ),
                  ],
                ),
              ),
              Hero(
                tag: cake.imageUrl,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(cake.imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                'Rp ${cake.price}',
                style: TextStyle(
                  color: Colors.amber,
                  fontFamily: 'Vatela',
                  fontSize: 14.0,
                ),
              ),
              Text(
                cake.name,
                style: TextStyle(
                  color: Colors.amber,
                  fontFamily: 'Vatela',
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.amber,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color: Colors.red,
                          size: 16,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Beli",
                          style: TextStyle(
                            fontFamily: 'Varela',
                            color: Colors.amberAccent,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.remove_circle_outline,
                          color: Colors.blue,
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.amberAccent,
                            fontSize: 12,
                            fontFamily: 'Varela',
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.add_circle_outline,
                          color: Colors.red,
                          size: 16,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
