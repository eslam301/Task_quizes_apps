import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:moody/pages/Moody/mainPage1_Moody.dart';
import 'package:moody/pages/News/mainPage3_News.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:moody/widgets/feelings_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../widgets/custion_card.dart';
import '../../widgets/work_out_program_widget.dart';

class WorkOutPage extends StatefulWidget {
  static const String routeName = "WorkOutPage";
  const WorkOutPage({super.key});

  @override
  State<WorkOutPage> createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    int selectedIndex = 1;
    int currentIndex = 0;
    return Scaffold(
        // backgroundColor: CupertinoColors.secondaryLabel,

        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(22.0),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/Images/avatarCircle.png")),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, Jade",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                    Text("Ready to workout?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ],
            ),
          ),
          actions: [
            // Image(image: AssetImage("assets/Icons/bell-02.png"))

            Padding(
              padding: const EdgeInsets.only(top: 14, right: 42),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: -10, end: -12),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 32,
                ),
                badgeContent: Text(' '),
                showBadge: true,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Color(0xff717BBC).withOpacity(.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage(
                                "assets/Icons/heart.png",
                              ),
                              color: Color(0xff717BBC),
                            ),
                            Text("Heart Rate",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                        Text("BPM",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                    Container(
                      width: 2,
                      color: Color(0xffD9D9D9),
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage(
                                "assets/Icons/list.png",
                              ),
                              color: Color(0xff717BBC),
                            ),
                            Text("To-do",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                        Text("32,5 %",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                    Container(
                      width: 2,
                      color: Color(0xffD9D9D9),
                      height: 50,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage(
                                "assets/Icons/heart.png",
                              ),
                              color: Color(0xff717BBC),
                            ),
                            Text("Calo",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                        Text("1000 Cal",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Text("Workout Programs",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  width: 200,
                  child: ContainedTabBarView(
                    tabBarProperties: TabBarProperties(
                      indicatorColor: Color(0xff363F72),
                    ),
                    tabs: [
                      Text("All Type",
                          style: TextStyle(
                            color: Color(0xff363F72),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                      Text(
                        "Full Body",
                        style: TextStyle(
                          color: Color(0xff363F72),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text("Upper",
                          style: TextStyle(
                            color: Color(0xff363F72),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      Text("Lower",
                          style: TextStyle(
                            color: Color(0xff363F72),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                    views: [
                      Expanded(
                          child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) =>
                            WorkOutProgram(),
                        itemCount: 5,
                      )),
                      Expanded(
                          child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) =>
                            WorkOutProgram(),
                        itemCount: 5,
                      )),
                      Expanded(
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) => WorkOutProgram(),
                            itemCount: 5,
                          )),
                      Expanded(
                          child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) =>
                            WorkOutProgram(),
                        itemCount: 5,
                      )),
                    ],
                    onChange: (index) => print(index),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            if (index == 0) {
              Navigator.pushReplacementNamed(context, MoodyPage.routeName);
            } else if (index == 2) {
              Navigator.pushReplacementNamed(context, NewsPage.routeName);
            }
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/home_icon.png")),
              label: 'قرأن',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/grid_icon.png")),
              label: 'احاديث',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/calendar.png")),
              label: 'سيبحة',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/user_icon.png")),
              label: 'راديو',
            ),
          ],
        ));
  }
}
