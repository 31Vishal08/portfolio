import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // aboutAchivements(num, type) {
  //   return Row(
  //     children: [
  //       Text(num,
  //           style: TextStyle(
  //             fontSize: 30,
  //             fontWeight: FontWeight.bold,
  //             fontFamily: "Soho",
  //           )),
  //       Container(
  //           margin: EdgeInsets.only(top: 10),
  //           child: Text(
  //             type,
  //             style: TextStyle(
  //               fontFamily: "Soho",
  //             ),
  //           ))
  //     ],
  //   );
  // }

  aboutAchivementsP(BuildContext context, String type) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/project');
      },
      child: Row(
        children: [
          Image.asset(
            'assests/project.jpg',
            width: 40, // Set the width as needed
            height: 40, // Set the height as needed
          ),
          SizedBox(width: 10,),
          // Text(
          //   "", // Replace "YourNum" with the actual number or text you want to display
          //   style: TextStyle(
          //     fontSize: 30,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: "Soho",
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              type,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Soho",
              ),
            ),
          ),
        ],
      ),
    );
  }

  aboutAchivementsA(BuildContext context, String type) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/about');
      },
      child: Row(
        children: [
          Image.asset(
            'assests/about.png',
            width: 40, // Set the width as needed
            height: 40, // Set the height as needed
          ),
          SizedBox(width: 10,),
          // Text(
          //   "", // Replace "YourNum" with the actual number or text you want to display
          //   style: TextStyle(
          //     fontSize: 30,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: "Soho",
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              type,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Soho",
              ),
            ),
          ),
        ],
      ),
    );
  }

  // mySpec(icon, text) {
  //   return Container(
  //     child: Card(
  //       margin: EdgeInsets.all(0),
  //       color: Color(0xff252525),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //       child: Container(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Icon(
  //               icon,
  //               color: Colors.white,
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               text,
  //               style: const TextStyle(
  //                   fontSize: 16, fontFamily: "Soho", color: Colors.white),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //     height: 115,
  //     width: 105,
  //   );
  // }

  mySpec(String imagePath, String text) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 50, // Adjust the width as needed
                height: 50, // Adjust the height as needed
                // color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Soho",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      height: 115,
      width: 105,
    );
  }



  // Widget clickableSpec(IconData icon, String text, String url) {
  //   return GestureDetector(
  //     onTap: () async {
  //       if (await canLaunch(url)) {
  //         // Check if the URL has a scheme (e.g., 'https://')
  //         if (!url.startsWith('http://') && !url.startsWith('https://')) {
  //           // If not, add 'https://' as the default scheme
  //           url = 'https://$url';
  //         }
  //         await launch(url);
  //       } else {
  //         throw 'Could not launch $url';
  //       }
  //     },
  //     child: mySpec(icon, text),
  //   );
  // }
  //
  // Widget clickableSpec(String imagePath, String text, String url) {
  //   return GestureDetector(
  //     onTap: () async {
  //       try {
  //         if (await canLaunch(url)) {
  //           if (!url.startsWith('http://') && !url.startsWith('https://')) {
  //             url = 'https://$url';
  //           }
  //           await launch(url);
  //         } else {
  //           throw 'Could not launch $url';
  //         }
  //       } catch (e) {
  //         print('Error launching URL: $url\n$e');
  //       }
  //     },
  //     child: mySpec(imagePath, text), // Pass imagePath as the icon parameter
  //   );
  // }

  Widget clickableSpec(String imagePath, String text, String url) {
    return GestureDetector(
      onTap: () async {
        try {
          await launch(url, forceWebView: false);
        } catch (e) {
          print('Error launching URL: $url\n$e');
        }
      },
      child: mySpec(imagePath, text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.transparent,
        // leading: PopupMenuButton(
        //     color: Colors.black,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(7),
        //     ),
        //     icon: Icon(Icons.menu),
        //     itemBuilder: (context) => [
        //       PopupMenuItem(
        //         child: TextButton(
        //             child: Text(
        //               'Projects',
        //               style: TextStyle(
        //                 color: Colors.white,
        //               ),
        //             ),
        //             onPressed: () {
        //               Navigator.pushNamed(context, '/project');
        //             }),
        //         value: 1,
        //       ),
        //       PopupMenuItem(
        //         child: TextButton(
        //             child: Text(
        //               'About Me',
        //               style: TextStyle(color: Colors.white),
        //             ),
        //             onPressed: () {
        //               Navigator.pushNamed(context, '/about');
        //             }),
        //         value: 2,
        //       )
        //     ]),
      ),

      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
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
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text('Vishal Raj Bais',
                        style: TextStyle(
                            fontFamily: "Soho",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Software Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Soho",
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, top: 30, right: 20),
            height: 500,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      aboutAchivementsP(context, 'Projects'),
                      aboutAchivementsA(context, 'About Me'),
                      // aboutAchivements('65', ' Clients'),
                      // aboutAchivements('92', ' Messages'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Specialized In',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Soho",
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec('assests/c++.png', 'C++'),
                          mySpec('assests/dsa.png', 'DSA'),
                          mySpec('assests/sql.png', 'MySQL'),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec('assests/flutter.png', 'Flutter'),
                          mySpec('assests/dart.png', 'Dart'),
                          mySpec('assests/firebase.jpg', 'Firebase'),
                          ],
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          clickableSpec('assests/github.png', 'Github', 'https://github.com/31Vishal08'),
                          mySpec('assests/git.png', 'Git'),
                          mySpec('assests/java.png', 'Java'),
                          // clickableSpec(FontAwesomeIcons.github, 'GitHub', 'https://github.com/31Vishal08'),
                          // clickableSpec('assests/git.png', 'Git', 'https://www.google.com'), // Replace with your Linux link
                          // clickableSpec('assests/java.png', 'Java', 'https://wordpress.org/'), // Replace with your WordPress link

                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),

      // body: Container(
      //   child: Stack(
      //     children: [
      //       Container(
      //         margin: EdgeInsets.only(top: 35),
      //         child: ShaderMask(
      //           shaderCallback: (rect) {
      //             return LinearGradient(
      //               begin: Alignment.center,
      //               end: Alignment.bottomCenter,
      //               colors: [Colors.black, Colors.transparent],
      //             ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      //           },
      //           blendMode: BlendMode.dstIn,
      //           child: Image.asset(
      //             'assests/bnw.png',
      //             height: 400,
      //             fit: BoxFit.contain,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         alignment: Alignment.center,
      //         margin: EdgeInsets.only(
      //             top: MediaQuery.of(context).size.height * 0.49),
      //         child: Column(
      //           children: [
      //             Text('Siddharth Chopra',
      //                 style: TextStyle(color: Colors.white, fontSize: 40)),
      //             SizedBox(
      //               height: 10,
      //             ),
      //             Text(
      //               'Software Developer',
      //               style: TextStyle(color: Colors.white, fontSize: 20),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
