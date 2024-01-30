import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio1/home.dart';
import 'package:portfolio1/projects.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Soho'),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/project': (context) => MyProject(),
      '/': (context) => MyHome(),
      '/about': (context) => MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            // Container(
            //   margin: EdgeInsets.only(top: 60),
            //   child: ShaderMask(
            //     shaderCallback: (rect) {
            //       return LinearGradient(
            //         begin: Alignment.center,
            //         end: Alignment.bottomCenter,
            //         colors: [Colors.black, Colors.transparent],
            //       ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            //     },
            //     blendMode: BlendMode.dstIn,
            //     child: Image.asset(
            //       'assests/bnw.png',
            //       height: 400,
            //       fit: BoxFit.contain,
            //     ),
            //   ),
            // ),

            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assests/bnw.png',
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Vishal Raj Bais',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {_launchURL('https://t.ly/pmxUU');},
                      child: Text('RESUME'),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),
                    ),
                    width: 120,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      clickableSpec('assests/linked.png', 'https://www.linkedin.com/in/vishalrajbais/'),
                      SizedBox(width: 5,),
                      clickableSpec('assests/github.png', 'https://github.com/31Vishal08'),
                      SizedBox(width: 5,),
                      clickableSpec('assests/cff.png', 'https://codeforces.com/profile/31Vishal08'),
                      SizedBox(width: 5,),
                      clickableSpec('assests/cc.jpeg', 'https://www.codechef.com/users/vishal_3108'),
                      SizedBox(width: 5,),
                      clickableSpec('assests/le.png', 'https://leetcode.com/vishalbais31/'),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.instagram,
                      //       color: Colors.white,
                      //     )),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.linkedin,
                      //       color: Colors.white,
                      //     )),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.github,
                      //       color: Colors.white,
                      //     )),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.twitter,
                      //       color: Colors.white,
                      //     )),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       FontAwesomeIcons.facebook,
                      //       color: Colors.white,
                      //     ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Container(
      //   alignment: Alignment.center,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         height: 40,
      //       ),
      //       ShaderMask(
      //         shaderCallback: (rect) {
      //           return LinearGradient(
      //             begin: Alignment.center,
      //             end: Alignment.bottomCenter,
      //             colors: [Colors.black, Colors.transparent],
      //           ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      //         },
      //         blendMode: BlendMode.dstIn,
      //         child: Image.asset(
      //           'assests/bnw.png',
      //           height: 400,
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Text(
      //         'Hello I am',
      //         style: TextStyle(color: Colors.white, fontSize: 30),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text('Siddharth Chopra',
      //           style: TextStyle(color: Colors.white, fontSize: 40)),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         'Software Developer',
      //         style: TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       SizedBox(
      //         child: TextButton(
      //           onPressed: () {},
      //           child: Text('Hire Me'),
      //           style: TextButton.styleFrom(
      //             primary: Colors.black,
      //             backgroundColor: Colors.white, // Background Color
      //           ),
      //         ),
      //         width: 120,
      //       ),
      //     ],
      //   ),
      // ),
    );

  }
  void _launchURL(String url) async {
    try {
      await launch(url, forceWebView: false);
    } catch (e) {
      print('Error launching URL: $url\n$e');
    }
  }
  Widget mySpec(String imagePath) {
    return Container(
      height: 40,
      width: 40,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipOval(
          child: Container(
            width: 60, // Adjust the width as needed
            height: 60, // Adjust the height as needed
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ),
      ),
    );
  }

  // mySpec(String imagePath) {
  //   return Container(
  //     child: Card(
  //       margin: EdgeInsets.all(0),
  //       color: Color(0xff252525),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //       child: Container(
  //         child: Image.asset(
  //           imagePath,
  //           width: 50, // Adjust the width as needed
  //           height: 50, // Adjust the height as needed
  //           // color: Colors.white,
  //         ),
  //       ),
  //     ),
  //     height: 50,
  //     width: 50,
  //   );
  // }
  Widget clickableSpec(String imagePath, String url) {
    return GestureDetector(
      onTap: () async {
        try {
          await launch(url, forceWebView: false);
        } catch (e) {
          print('Error launching URL: $url\n$e');
        }
      },
      child: mySpec(imagePath),
    );
  }
}