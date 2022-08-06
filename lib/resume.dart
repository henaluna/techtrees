import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'sample.dart';

class resumePage extends StatefulWidget {
  const resumePage({Key? key}) : super(key: key);

  @override
  State<resumePage> createState() => _resumePage();
}

class _resumePage extends State<resumePage> {
  int intValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.27,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.only(
                        left: 29,
                      ),
                      child: Container(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage("image/8.png"),
                          backgroundColor: Colors.white,
                        ),
                        // child: ClipOval(
                        //   child: SizedBox(
                        //     width: 110,
                        //     height: 110,
                        //     child: Image.asset(
                        //       "image/8.png",
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "[ 이름 ]",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Color.fromARGB(255, 255, 255, 255),
                              child: Wrap(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromRGBO(229, 255, 247, 1),
                                      border: Border.all(
                                          color:
                                              Color.fromRGBO(101, 212, 179, 1),
                                          width: 1),
                                    ),
                                    margin: const EdgeInsets.all(2.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("키워드 1"),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromRGBO(229, 255, 247, 1),
                                      border: Border.all(
                                          color:
                                              Color.fromRGBO(101, 212, 179, 1),
                                          width: 1),
                                    ),
                                    margin: const EdgeInsets.all(2.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("키워드 2"),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromRGBO(229, 255, 247, 1),
                                      border: Border.all(
                                          color:
                                              Color.fromRGBO(101, 212, 179, 1),
                                          width: 1),
                                    ),
                                    margin: const EdgeInsets.all(2.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("키워드 3"),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color.fromRGBO(229, 255, 247, 1),
                                      border: Border.all(
                                          color:
                                              Color.fromRGBO(101, 212, 179, 1),
                                          width: 1),
                                    ),
                                    margin: const EdgeInsets.all(2.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text("키워드 4"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    "자기소개",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 35,
                right: 35,
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              child: TextField(
                maxLength: 150,
                keyboardType: TextInputType.text,
                inputFormatters: [],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    "팀 메이트 코멘트",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(214, 255, 243, 1),
              ),
              margin: const EdgeInsets.only(
                left: 35,
                right: 35,
              ),
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 50,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    "경력사항",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            DataTablewidget(),
            SizedBox(height: 10),
            Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    "당신을 추천한 사람들",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: _buildlist(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildlist() => ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _tile("김태훈1", "엔지니어"),
        _tile("김태훈2", "디자이너"),
        _tile("김태훈3", "엔지니어1"),
      ],
    );
ListTile _tile(String title, String subtitle) => ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    leading: _userImage(Imagess[Random().nextInt(Imagess.length)]));

ClipRRect _userImage(String url) => ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(url),
    );

final Imagess = [
  "https://randomuser.me/api/portraits/women/22.jpg",
  "https://randomuser.me/api/portraits/women/45.jpg",
  "https://randomuser.me/api/portraits/women/33.jpg",
];
