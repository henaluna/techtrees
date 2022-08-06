import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:techtrees/onboarding.dart';
import 'package:techtrees/searchdetail.dart';

import 'navi.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  bool isLiked = false;
  int likeCount = 0;

  var imagePath = [
    'image/1.png',
    'image/2.png',
    'image/3.png',
    'image/4.png',
    'image/5.png',
    'image/6.png',
    'image/7.png',
  ];

  var nameList = [
    '김새싹',
    '박나무',
    '이여름',
    '김겨울',
    '최가을',
    '서봄',
    '한나라',
  ];

  var careerList = [
    'freshman',
    'freshman',
    'more than 2',
    'more than 1',
    'more than 2',
    'more than 5',
    'more than 2',
  ];

  var positionList = [
    '기획',
    '개발자',
    '개발자',
    '디자이너',
    '디자이너',
    '마케팅',
    '기획',
  ];

  var keywordList = [
    '#금융, #카카오',
    '#게임, #네이버',
    '#광고, #LG',
    '#법률, #스타트업',
    '#게임, #넥슨',
    '#금융, #카카오',
    '#게임, #네이버',
  ];

  final _valueList = ['career', 'freshman', 'more than 2', 'more than 5'];
  var _selectedValue = 'career';

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'ooo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '님과 함께할',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  '팀원을 찾아보세요',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                DropdownButton(
                  value: _selectedValue,
                  items: _valueList.map(
                    (value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      // _selectedValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            // width: 380,
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: ListView.builder(
              itemCount: nameList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchDetailPage()),
                    );
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(imagePath[index]),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(nameList[index],
                                      style: TextStyle(fontSize: 15)),
                                  SizedBox(width: 100),
                                  Text(careerList[index],
                                      style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(positionList[index],
                                  style: TextStyle(fontSize: 15)),
                              SizedBox(height: 5),
                              Text(
                                keywordList[index],
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.left,
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 200),
                                  LikeButton(
                                    size: 15,
                                    isLiked: isLiked,
                                    likeCount: likeCount,
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 15,
                                    height: 15,
                                    child:
                                        Image.asset('image/speechbollen.png'),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
