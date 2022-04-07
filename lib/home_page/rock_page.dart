import 'package:final_project/home_page/musicDetail_page.dart';
import 'package:final_project/home_page/page.dart';
import 'package:final_project/home_page/musicItem_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rockPage extends StatefulWidget {
  const rockPage({Key? key}) : super(key: key);
  static const routeName = '/rockpage';
  @override
  _rockPageState createState() => _rockPageState();
}

class _rockPageState extends State<rockPage> {
  var items = [
    musicItem(
        id: 1,
        name: "Smells Like Teen Spirit",
        artistname: 'Nirvana',
        image: "Rock_01.jpg",
        detail: "https://youtu.be/hTWKbfoikeg"),
    musicItem(
        id: 2,
        name: "Paradise City",
        artistname: "Guns N' Roses",
        image: "Rock_02.jpg",
        detail: "https://youtu.be/Rbm6GXllBiw"),
    musicItem(
        id: 3,
        name: "Another One Bites The Dust - Remastered 2011",
        artistname: 'Queen',
        image: "Rock_03.jpg",
        detail: "https://youtu.be/1tLYYSofs3U"),
    musicItem(
        id: 4,
        name: "Highway to Hell",
        artistname: "AC/DC",
        image: "Rock_04.jpg",
        detail: "https://youtu.be/l482T0yNkeo"),
    musicItem(
        id: 5,
        name: "Should I Stay or Should I Go - Remastered",
        artistname: 'The Clash',
        image: "Rock_05.jpg",
        detail: "https://youtu.be/BN1WwnEDWAM"),
    musicItem(
        id: 6,
        name: "I Love Rock 'N Roll",
        artistname: 'Joan Jett & The Blackhearts',
        image: "Rock_06.jpg",
        detail: "https://youtu.be/wMsazR6Tnf8"),
    musicItem(
        id: 7,
        name: "Whole Lotta Love - 1990 Remaster",
        artistname: 'Led Zeppelin',
        image: "Rock_07.jpg",
        detail: "https://youtu.be/PKXN88tjeMY"),
    musicItem(
        id: 8,
        name: "Creep",
        artistname: 'Rediohead',
        image: "Rock_08.jpg",
        detail: "https://youtu.be/XFkzRNyygfk"),
    musicItem(
        id: 9,
        name: "Something In The Way",
        artistname: 'Nirvana',
        image: "Rock_01.jpg",
        detail: "https://youtu.be/4VxdufqB9zg"),
    musicItem(
        id: 10,
        name: "Dream On",
        artistname: 'Aerosmith',
        image: "Rock_10.jpg",
        detail: "https://youtu.be/89dGC8de0CA"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Rock')),
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
                  Color(0xFFFF34E7),
                  Color(0xFF000000),

                ],
              ),
            ),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/Rock_00.jpg'
                  )
                )
              ),
            ),
          ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Color(0xFF030303),
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
                                  style: TextStyle(color: Colors.white, fontSize: 20.0),
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
