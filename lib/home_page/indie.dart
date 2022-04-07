import 'package:final_project/home_page/musicDetail_page.dart';
import 'package:final_project/home_page/page.dart';
import 'package:final_project/home_page/musicItem_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class indiePage extends StatefulWidget {
  const indiePage({Key? key}) : super(key: key);
  static const routeName = '/indiepage';
  @override
  _indiePageState createState() => _indiePageState();
}

class _indiePageState extends State<indiePage> {
  var items = [
    musicItem(
        id: 1,
        name: "All My Friends Are Fallin' In Love",
        artistname: 'Oslo Ibrahim',
        image: "indie_01.jpg",
        detail: "https://youtu.be/NWDYnlXjqE8"),
    musicItem(
        id: 2,
        name: "Fire Escape",
        artistname: "Beach Bunny",
        image: "indie_02.jpg",
        detail: "https://youtu.be/1IRsxVJXhoA"),
    musicItem(
        id: 3,
        name: "Mấy Khi",
        artistname: 'Ngọt',
        image: "indie_03.jpg",
        detail: "https://youtu.be/LvNEPB5x7T8"),
    musicItem(
        id: 4,
        name: "Sunday",
        artistname: "Morvasu",
        image: "indie_04.jpg",
        detail: "https://youtu.be/ZCTNzSYHkvQ"),
    musicItem(
        id: 5,
        name: "OPEN A WINDOW",
        artistname: 'Rex Orange Country, Tyler, The Creator',
        image: "indie_05.jpg",
        detail: "https://youtu.be/KGkabBe-44I"),
    musicItem(
        id: 6,
        name: "Back On the Music!",
        artistname: 'Paul Cherry',
        image: "indie_06.jpg",
        detail: "https://youtu.be/PjVnZ61j8hU"),
    musicItem(
        id: 7,
        name: "Déjà Vu",
        artistname: 'Toro y Moi',
        image: "indie_07.jpg",
        detail: "https://youtu.be/otbjpmcoLWk"),
    musicItem(
        id: 8,
        name: "bad, bad idea!",
        artistname: 'The Backdoor Hours',
        image: "indie_08.jpg",
        detail: "https://youtu.be/otbjpmcoLWk"),
    musicItem(
        id: 9,
        name: "Leaving Today",
        artistname: 'Alfie Templeman',
        image: "indie_09.jpg",
        detail: "https://youtu.be/pZpOvQj_Ack"),
    musicItem(
        id: 10,
        name: "counting chances",
        artistname: 'Cassette Taps',
        image: "indie_10.jpg",
        detail: "https://youtu.be/oHU8rqASVgI"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Indie')),
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
                  Color(0xFFECFF20),
                  Color(0xFF198106),

                ],
              ),
            ),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/indie_00.jpg'
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
                                  style: TextStyle(fontSize: 20.0,color: Colors.white),
                                ),
                                Text(item.artistname,style: TextStyle(color: Colors.white),),
                                Text(item.detail,style: TextStyle(color: Colors.white),),
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
