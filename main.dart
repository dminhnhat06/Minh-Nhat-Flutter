import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Shopping',
          ),
          leading: IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                'Popular Products',
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              margin: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width*0.7,
              height: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                color: Color.fromRGBO(234,238,239,1.000),
                borderRadius: BorderRadius.circular(10)
              ),
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    width: MediaQuery.of(context).size.width*0.6,
                    fit: BoxFit.fitWidth,
                    'assets/1.png',
                  ),
                  Image.asset(
                    width: MediaQuery.of(context).size.width*0.6,
                    fit: BoxFit.fitWidth,
                    'assets/2.png',
                  ),
                  Image.asset(
                    width: MediaQuery.of(context).size.width*0.6,
                    fit: BoxFit.fitWidth,
                    'assets/3.png',
                  ),
                  Image.asset(
                    width: MediaQuery.of(context).size.width*0.6,
                    fit: BoxFit.fitWidth,
                    'assets/4.png',
                  ),
                  Image.asset(
                    width: MediaQuery.of(context).size.width*0.6,
                    fit: BoxFit.fitWidth,
                    'assets/5.png',
                  ),
                ],
              )
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(right: 5),
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Sort by'
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/6.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Original',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/7.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Running',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/8.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Basketball',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/9.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Football',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/10.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Basketball',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/11.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Weightlifting',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/12.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Running',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/13.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Football',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/6.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Original',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    height: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(234,238,239,1.000),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/7.png',
                            width: MediaQuery.of(context).size.width*0.42,
                            height: MediaQuery.of(context).size.width*0.21,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shoes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Running',
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    "9.99 \$",
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              CartButton(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          indicatorColor: Colors.lightBlue,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.notifications), label: 'Notifications'),
            NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.account_circle), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        print("Add to cart");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            padding: EdgeInsets.all(10),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            content: Text(
              'Added to cart successfully',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 3),
            showCloseIcon: true,
          ),
        );
      },
      icon: Icon(Icons.add_shopping_cart_outlined),
    );
  }
}