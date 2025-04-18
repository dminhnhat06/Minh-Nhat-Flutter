import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CartProvider.dart';
import 'Product.dart';
import 'CartScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CartProvider())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen());
  }
}

List<Product> products = [
  Product(
    id: "1",
    name: "Giày nam Size 37",
    image: 'assets/1.png',
    price: 259000,
  ),
  Product(
    id: "2",
    name: "Giày nam Size 38",
    image: 'assets/2.png',
    price: 299000,
  ),
  Product(
    id: "3",
    name: "Giày nam Size 39",
    image: 'assets/3.png',
    price: 199000,
  ),
  Product(
    id: "4",
    name: "Giày nam Size 40",
    image: 'assets/4.png',
    price: 239000,
  ),
  Product(
    id: "5",
    name: "Giày nam Size 41",
    image: 'assets/5.png',
    price: 499000,
  ),
  Product(
    id: "6",
    name: "Giày nam Size 37",
    image: 'assets/6.png',
    price: 599000,
  ),
  Product(
    id: "7",
    name: "Giày nam Size 38",
    image: 'assets/7.png',
    price: 449000,
  ),
  Product(
    id: "8",
    name: "Giày nam Size 39",
    image: 'assets/8.png',
    price: 499000,
  ),
  Product(
    id: "9",
    name: "Giày nam Size 40",
    image: 'assets/9.png',
    price: 599000,
  ),
  Product(
    id: "10",
    name: "Giày nam Size 41",
    image: 'assets/10.png',
    price: 559000,
  ),
];

Widget ProductGridView() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemCount: products.length,
    itemBuilder: (context, index) {
      final product = products[index];
      return Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.42,
        height: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(234, 238, 239, 1.000),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ProductDetail(
                              data: {
                                'name': products[index].name,
                                'price': products[index].price,
                                'image': products[index].image,
                                'list': products,
                              },
                            ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      products[index].image,
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: MediaQuery.of(context).size.width * 0.21,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Positioned(top: 0, right: 0, child: HeartButton()),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: EdgeInsets.only(left: 10, bottom: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "₫${products[index].price}",
                        style: TextStyle(color: Colors.cyan, fontSize: 15),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Provider.of<CartProvider>(
                        context,
                        listen: false,
                      ).addToCart(product);
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
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 3),
                          showCloseIcon: true,
                        ),
                      );
                    },
                    icon: Icon(Icons.add_shopping_cart_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget ProductListView() {
  return ListView.builder(
    itemCount: products.length,
    itemBuilder: (context, index) {
      final product = products[index];
      return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ProductDetail(
                          data: {
                            'name': products[index].name,
                            'price': products[index].price,
                            'image': products[index].image,
                          },
                        ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  products[index].image,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '₫${products[index].price}',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                    HeartButton(),
                    IconButton(
                      onPressed: () {
                        Provider.of<CartProvider>(
                          context,
                          listen: false,
                        ).addToCart(product);
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
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 3),
                            showCloseIcon: true,
                          ),
                        );
                      },
                      icon: Icon(Icons.add_shopping_cart_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          ToggleButtons(
            children: [Icon(Icons.list), Icon(Icons.grid_view)],
            isSelected: [isListView, !isListView],
            onPressed: (int index) {
              setState(() {
                isListView = index == 0;
              });
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: isListView ? ProductListView() : ProductGridView(),
    );
  }
}

class HeartButton extends StatefulWidget {
  @override
  _HeartButton createState() => _HeartButton();
}

class _HeartButton extends State<HeartButton> {
  Color _iconColor = Colors.grey;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite, color: _iconColor),
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
          _iconColor = _isPressed ? Colors.red : Colors.grey;
        });
      },
    );
  }
}

class addToCartButton extends StatelessWidget {
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
              style: TextStyle(color: Colors.white),
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

class ProductDetail extends StatelessWidget {
  final Map<String, dynamic> data;

  ProductDetail({required this.data});

  void _showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text('Bạn có chắc chắn muốn quay lại?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Hủy'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String imageid = data['image'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
        leading: IconButton(
          onPressed: () => _showMyDialog(context),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.width * 0.6,
              child: PageView(
                children: [
                  Image.asset(
                    imageid,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(
                    imageid,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(
                    imageid,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(
                    imageid,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(
                    imageid,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${data['name']}', style: TextStyle(fontSize: 18)),
                  Text('${data['price']} đ', style: TextStyle(fontSize: 20)),
                  Text("Sản phầm khác"),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ProductDetail(
                                    data: {
                                      'name': products[index].name,
                                      'price': products[index].price,
                                      'image': products[index].image,
                                    },
                                  ),
                            ),
                          );
                        },
                        child: Image.asset(
                          products[index].image,
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
