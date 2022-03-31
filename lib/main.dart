import 'package:flutter/material.dart';
// import 'package:ui_store/widget/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_store/widget/category_shoe_item.dart';
import 'package:ui_store/widget/row_category_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            // Spacer(),
            Opacity(
              opacity: .3,
              child: Image.asset(
                'images/logo.png',
                width: 80,
              ),
            ),
            // Spacer(),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_checkout,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: MainContent(),
    );
  }
}

class MainContent extends StatefulWidget {
  MainContent({Key? key}) : super(key: key);

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  int _currentIndex = 0;

  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  ];

  final List<String> titles = [
    ' Coffee ',
    ' Bread ',
    ' Gelato ',
    ' Ice',
  ];

// *get header
  Widget _getHeader() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Collection',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Nike Original 2022',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

// * Silder
  Widget _getSlider() {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            // autoPlay: true,
            enlargeCenterPage: true,
            // scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) {
              // debugPrint(reason.toString());
              setState(
                () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: imagesList
              .map(
                (item) => Card(
                  margin: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  elevation: 2.0,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(30.0),
                  // ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0XffF1F4FF),
                          ),
                        ),
                        Positioned(
                          top: -30,
                          right: -50,
                          child: Image.asset(
                            'images/shoe.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nike Air Max 270',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              Text(
                                'Men`s shoe',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Spacer(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Shop now',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imagesList.map((urlOfItem) {
            int index = imagesList.indexOf(urlOfItem);
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Color.fromRGBO(0, 0, 0, 0.8)
                    : Color.fromRGBO(0, 0, 0, 0.3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }

// *category row
  Widget _getCategoryRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowCategoryItem(
          clr: Colors.black,
          title: 'Lifestyle',
          shoesCount: '35 items',
        ),
        RowCategoryItem(
          clr: Colors.grey,
          title: 'Running',
          shoesCount: '41 items',
        ),
        RowCategoryItem(
          clr: Colors.grey,
          title: 'Tennis',
          shoesCount: '15 items',
        ),
      ],
    );
  }

  // *lifestyle row item
  Widget _getListStyleShoes() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryshoeItem(),
          SizedBox(width: 30),
          CategoryshoeItem(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // * header
            _getHeader(),
            SizedBox(
              height: 20,
            ),
            // * slider
            _getSlider(),
            SizedBox(
              height: 20,
            ),
            // *category row
            _getCategoryRow(),
            SizedBox(
              height: 20,
            ),
            // *lifestyle row item
            _getListStyleShoes(),
          ],
        ),
      ),
    );
  }
}

