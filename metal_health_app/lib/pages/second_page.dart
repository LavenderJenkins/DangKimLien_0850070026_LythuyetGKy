// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:metal_health_app/util/exercises_title.dart';

import 'package:metal_health_app/util/category_menu.dart';

class SecondPage extends StatefulWidget {
  // Key? kiểu dữ liệu, key: tham số: định danh 1 widget trong cây widget -> tối ưu hoá xd & cập nhật cây widget.
  // ? : keycó thể null
  // super(key: key): gọi constructor of lớp cha (StatefulWidget) ->đảm bảo các thuộc tính,hành vi đc kế thừa từ lớp cha.
  const SecondPage({Key? key})
      : super(key: key); // là một constructor của lớp SecondPage.

// mỗi StatefulWidget cần phải có một State tương ứng để quản lý trạng thái của widget đó
  @override // ghi đè lên phương thức createState() của lớp StatefulWidget.
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: ElevatedButton(
                child: Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ElevatedButton(
                child: Icon(
                  Icons.apps_sharp,
                  color: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ElevatedButton(
                child: Icon(
                  Icons.mail,
                  color: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/third');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity_rounded,
                color: Colors.blueAccent,
              ),
              label: '',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    // Chào hỏi
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Hi Lien!
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Lien!',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              //tạo hộp rỗng -> tạo 1 khoảng cách 8 pixel giữa text1 - text2
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Thứ 4, ngày 2/8/2023',
                                style: TextStyle(color: Colors.blue[200]),
                              ),
                            ],
                          ),

                          // Thong báo
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                    SizedBox(height: 25),

                    // search bar
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Row(children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5), // căn khoảng cách icon -search
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                    SizedBox(width: 25), // căn khoảng cách icon -search
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // Exercise
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.grey[200],
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // exercise heading
                              Text(
                                'Caterory',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),

                          //list view of category
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryMenu(
                                  text: 'text', background: Colors.amber),
                              CategoryMenu(
                                  text: 'text', background: Colors.amber)
                            ],
                          ),
                          SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryMenu(
                                  text: 'text', background: Colors.amber),
                              CategoryMenu(
                                  text: 'text', background: Colors.amber)
                            ],
                          ),

                          // consultant
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // exercise heading
                              Text(
                                'Consultant',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),

                          ExerciseTitle(
                              icon: Icons.person,
                              background: Colors.green,
                              title: 'Bobby Singer',
                              text: 'Education'),
                          ExerciseTitle(
                              icon: Icons.person,
                              background: Colors.green,
                              title: 'Bobby Singer',
                              text: 'Education'),
                          ExerciseTitle(
                              icon: Icons.person,
                              background: Colors.green,
                              title: 'Bobby Singer',
                              text: 'Education')
                        ],
                      ),
                    )),
              ))
            ],
          ),
        ));
  }
}
