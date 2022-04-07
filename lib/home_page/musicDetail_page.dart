import 'package:final_project/home_page/musicItem_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class musicDetailPage extends StatefulWidget {
  const musicDetailPage({Key? key}) : super(key: key);
  static const routeName = '/musicdetail';
  @override
  _musicDetailPageState createState() => _musicDetailPageState();
}

class _musicDetailPageState extends State<musicDetailPage> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as musicItem;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(args.name)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Color(0xFFFFD664)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    "assets/images/${args.image}",
                    height: 200.0,
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("musicName: ${args.name}",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("artistName: ${args.artistname}",style: TextStyle(fontSize: 20),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                      TextSpan(
                          style: TextStyle(fontSize: 27,),
                          children: [
                            TextSpan(
                                text: "Detail: ",style: TextStyle(fontSize: 20)
                            ),
                            TextSpan(
                                style: TextStyle(color:  Color(0xFF0924D6), decoration: TextDecoration.underline,fontSize: 20),
                                //make link blue and underline
                                text: "${args.detail}",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    String url = "${args.detail}";
                                    var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                                    if(urllaunchable){
                                      await launch(url); //launch is from url_launcher package to launch URL
                                    }else{
                                      print("URL can't be launched.");
                                    }
                                  }
                            ),
                            TextSpan(
                                text: " "
                            ),

                          ]
                      )
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