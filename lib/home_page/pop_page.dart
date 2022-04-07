import 'package:final_project/home_page/musicDetail_page.dart';
import 'package:final_project/home_page/page.dart';
import 'package:final_project/home_page/musicItem_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class popPage extends StatefulWidget {
  const popPage({Key? key}) : super(key: key);
  static const routeName = '/poppage';
  @override
  _popPageState createState() => _popPageState();
}

class _popPageState extends State<popPage> {
  var items = [
    musicItem(
        id: 1,
        name: "PS5",
        artistname: 'salem ilese, TOMORROW',
        image: "pop_01.jpg",
        detail: "https://youtu.be/2GUAHntkK6A"),
    musicItem(
        id: 2,
        name: "As It Was",
        artistname: "Harry Styles",
        image: "pop_02.jpg",
        detail: "https://youtu.be/H5v3kku4y6Q"),
    musicItem(
        id: 3,
        name: "The Weekend",
        artistname: '88rising, BIBI, MILLI',
        image: "pop_03.jpg",
        detail: "https://youtu.be/HVi5kQjyUVQ"),
    musicItem(
        id: 4,
        name: "up at night",
        artistname: "Kehlani, Justin Bieber",
        image: "pop_04.jpg",
        detail: "https://youtu.be/v8G3mEinTbo"),
    musicItem(
        id: 5,
        name: "When You're Gone",
        artistname: 'Shawn Mendes',
        image: "pop_05.jpg",
        detail: "https://youtu.be/tp4fUH2E8uc"),
    musicItem(
        id: 6,
        name: "Angel Baby",
        artistname: 'Troye Sivan',
        image: "pop_06.jpg",
        detail: "https://youtu.be/IR-6KE8C4VQ"),
    musicItem(
        id: 7,
        name: "Sweetest Pie",
        artistname: 'Megan Thee Stallion',
        image: "pop_07.jpg",
        detail: "https://youtu.be/K7JrX7PHGBE"),
    musicItem(
        id: 8,
        name: "You Were  Loved",
        artistname: 'Gryffin, OneRepublic',
        image: "pop_08.jpg",
        detail: "https://youtu.be/8d9Ma7vp7Sc"),
    musicItem(
        id: 9,
        name: "ANGOSTURA",
        artistname: 'keshi',
        image: "pop_09.jpg",
        detail: "https://youtu.be/SqFJEIT35k8"),
    musicItem(
        id: 10,
        name: "Why Say Why",
        artistname: 'SAMMii',
        image: "pop_10.jpg",
        detail: "https://youtu.be/OWGS2kTtGC0"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pop')),
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pushNamed(
                context,
                homePage.routeName,
              );
            }),

      ),
      body: Column(
        children: [
          Expanded(child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF001384),
                  Color(0xFF09D6D6),

                ],
              ),
            ),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/pop_00.jpg'
                      )
                  )
              ),
            ),
          ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color:Color(0xFF030303),
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  musicItem item = items[index];
                  return Card(
                    color: Color(0xFF474747),
                    margin: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        print(item);
                        Navigator.pushNamed(
                          context,
                          musicDetailPage.routeName,
                          arguments: item,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/${item.image}",
                              width: 60.0,
                              height: 60.0,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 8.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                                ),
                                Text(item.artistname, style: TextStyle(color: Colors.white)),
                                Text(item.detail, style: TextStyle(color: Colors.white)),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
