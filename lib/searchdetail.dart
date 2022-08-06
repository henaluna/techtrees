import 'dart:math';

import 'package:flutter/material.dart';
import 'package:techtrees/sample.dart';

class SearchDetailPage extends StatelessWidget {
  const SearchDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //색변경
          ),
          title: const Text(
            'Search',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.27,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                          color: Color.fromARGB(255, 255, 255, 255),
                          padding: EdgeInsets.only(left: 29),
                          child: Container(
                            child: CircleAvatar(
                              radius: 100,
                              backgroundImage: AssetImage("image/1.png"),
                              backgroundColor: Colors.white,
                            ),
                          )),
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
                              "이름 끌어오기",
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Color.fromARGB(0, 255, 200, 255),
                                child: Wrap(children: [
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
                                  )
                                ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
                  bottom: 10,
                ),
                child: Text("자기소개 끌어오기 - 최고를 지향하는 개발자 "),
                // child: TextField(
                //   maxLength: 150,
                //   keyboardType: TextInputType.text,
                //   inputFormatters: [],
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //   ),
                // ),
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
                width: 380,
                child: Text("항상 열심히"),
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
            ]),
          ),
        ));
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
