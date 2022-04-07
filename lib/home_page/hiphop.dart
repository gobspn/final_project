import 'package:final_project/home_page/musicDetail_page.dart';
import 'package:final_project/home_page/page.dart';
import 'package:final_project/home_page/musicItem_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class hiphopPage extends StatefulWidget {
  const hiphopPage({Key? key}) : super(key: key);
  static const routeName = '/hiphoppage';
  @override
  _hiphopPageState createState() => _hiphopPageState();
}

class _hiphopPageState extends State<hiphopPage> {
  var items = [
    musicItem(
        id: 1,
        name: "Stick",
        artistname: 'Dreamville, JID, J. Cole, Sheck Wes, Kenny Mason',
        image: "hiphop_01.png",
        detail: "https://youtu.be/r4Wsi4qkfYY"),
    musicItem(
        id: 2,
        name: "ROSE STREET",
        artistname: "Vince Staples",
        image: "hiphop_02.jpg",
        detail: "https://youtu.be/s4K8ZiugWnI"),
    musicItem(
        id: 3,
        name: "Ye Not Crazy",
        artistname: 'Joyner Lucas',
        image: "hiphop_03.jpg",
        detail: "https://youtu.be/XBNUuGVFisU"),
    musicItem(
        id: 4,
        name: "The God Hour",
        artistname: "ASAP ANT, ASAP Rocky",
        image: "hiphop_04.jpg",
        detail: "https://youtu.be/NExMQ0PLvf0"),
    musicItem(
        id: 5,
        name: "100 Chicagos",
        artistname: 'Lupe Fiasco',
        image: "hiphop_05.jpg",
        detail: "https://youtu.be/RlcfnYa-T4s"),
    musicItem(
        id: 6,
        name: "Top Notch",
        artistname: 'City Girls, Fivio Foreign',
        image: "hiphop_06.jpg",
        detail: "https://youtu.be/Dpr9j_Hj7B0"),
    musicItem(
        id: 7,
        name: "Rackz got më",
        artistname: 'Yeat, Gunna',
        image: "hiphop_07.jpg",
        detail: "https://youtu.be/aNj6MDPzd_M"),
    musicItem(
        id: 8,
        name: "Playa (feat. H.E.R)",
        artistname: 'A Boogie Wit da Hoodie',
        image: "hiphop_08.jpg",
        detail: "https://youtu.be/0JLRS4TcFpY"),
    musicItem(
        id: 9,
        name: "Ice Cream (ft. Rick Ross)",
        artistname: 'Freddie Gibbs, Rick Ross',
        image: "hiphop_09.jpg",
        detail: "https://youtu.be/I6D1m7i1RyA"),
    musicItem(
        id: 10,
        name: "Rain On You!",
        artistname: 'JELEEL!',
        image: "hiphop_10.jpg",
        detail: "https://youtu.be/KviwNPa3hag"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Hip-Hop')),
        backgroundColor: Color(0xFF000000),
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
                  Color(0xFFFF0000),
                  Color(0xFFFFD100),

                ],
              ),
            ),
            child: Container(

              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/hiphop_00.png'
                      )
                  ),
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
                    color:   Color(0xFF474747),
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
                                Text(item.artistname,style: TextStyle(color: Colors.white)),
                                Text(item.detail,style: TextStyle(color: Colors.white)),
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
