import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  // projetCard(lang, title, description) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width * 0.9,
  //     height: 220,
  //     child: Card(
  //       child: Container(
  //         margin: EdgeInsets.only(left: 20, top: 30, right: 10),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               lang,
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 18,
  //               ),
  //             ),
  //             SizedBox(
  //               height: 15,
  //             ),
  //             Text(
  //               title,
  //               style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 30,
  //                   fontWeight: FontWeight.w700),
  //             ),
  //             SizedBox(
  //               height: 3,
  //             ),
  //             Text(
  //               description,
  //               style: TextStyle(color: Colors.white70, fontSize: 16),
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Row(
  //               children: [
  //                 Icon(
  //                   Icons.star,
  //                   color: Colors.white70,
  //                   size: 18,
  //                 ),
  //                 SizedBox(
  //                   width: 4,
  //                 ),
  //                 // Text(
  //                 //
  //                 //   style: TextStyle(
  //                 //     color: Colors.white70,
  //                 //   ),
  //                 // ),
  //                 Expanded(child: Container()),
  //                 IconButton(
  //                     onPressed: () {},
  //                     icon: Icon(
  //                       FontAwesomeIcons.github,
  //                       color: Colors.white,
  //                     )),
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //       color: Color(0xff262628),
  //     ),
  //   );
  // }
  Widget projectCard(BuildContext context, String lang, String title, String description, String githubUrl) {
    return GestureDetector(
      onTap: () {
        _launchURL(githubUrl);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 220,
        child: Card(
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 30, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white70,
                      size: 18,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {
                        _launchURL(githubUrl);
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          color: Color(0xff262628),
        ),
      ),
    );
  }
  void _launchURL(String url) async {
    try {
      await launch(url, forceWebView: false);
    } catch (e) {
      print('Error launching URL: $url\n$e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Color(0xff252525),
        backgroundColor: Colors.white,
        title: Text('Projects'),

      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projectCard(
                  context,'FLUTTER', 'Edushala-Student-App', 'My intern project.','https://github.com/31Vishal08/EDUSHALA-Student-app-'),
              projectCard(context,'FLUTTER', 'BMI_calc', 'BMI calculator','https://github.com/31Vishal08/BMI_calc'),
              projectCard(context,'FLUTTER', 'to-do-list-app',
                  'Store your TODO List','https://github.com/31Vishal08/to-do-list-app'),
              // projectCard(context,'C++', 'Chess', 'Multiplayer chess engine.','https://github.com/31Vishal08'),
              // projectCard(
              //     context, 'FLUTTER', 'Click 2 Code', 'An online code compiler','https://github.com/31Vishal08')
            ],
          ),
        ),
      ),
    );
  }
}