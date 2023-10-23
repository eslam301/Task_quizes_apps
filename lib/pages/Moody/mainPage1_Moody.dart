import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:moody/pages/News/mainPage3_News.dart';
import 'package:moody/widgets/feelings_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../widgets/custion_card.dart';
import '../WorkOut/mainPage2_workOut.dart';

class MoodyPage extends StatefulWidget {
  static const String routeName = "Moody";
  MoodyPage({super.key});

  @override
  State<MoodyPage> createState() => _MoodyPageState();
}

class _MoodyPageState extends State<MoodyPage> {
  int selectedIndex = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        // backgroundColor: CupertinoColors.secondaryLabel,

        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(22.0),
            child: const Row(
              children: [
                Image(image: AssetImage("assets/Icons/logo.png")),
                SizedBox(
                  width: 8,
                ),
                Text("Moody"),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Hello, Sara Rose", style: theme.textTheme.titleLarge),
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.only(top: 12, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("How are you feeling today ?",
                        textAlign: TextAlign.start,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeelingIcon(
                            textTitle: "Love",
                            assetsPath: "assets/Icons/love.png"),
                        FeelingIcon(
                            textTitle: "Cool",
                            assetsPath: "assets/Icons/cool.png"),
                        FeelingIcon(
                            textTitle: "Happy",
                            assetsPath: "assets/Icons/happy.png"),
                        FeelingIcon(
                            textTitle: "Sad",
                            assetsPath: "assets/Icons/sad.png"),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Feature",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        children: [
                          Text("See more",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff027A48))),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Color(0xff027A48),
                          ),
                        ],
                      )
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      enlargeCenterPage: true,
                      height: 168.0,
                      viewportFraction: 1,
                    ),
                    items: [1, 2, 3, 4, 5, 6].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: 400,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: const Color(0x9132D583)),
                              child: const Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Positive vibes",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff344054))),
                                      Text(
                                          "Boost your mood with \n positive vibes",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      Row(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  "assets/Icons/_Play button.png")),
                                          SizedBox(width: 8),
                                          Text("10 mins",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                  Image(
                                      image: AssetImage(
                                          "assets/Images/Walking the Dog.png"))
                                ],
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  DotsIndicator(
                    dotsCount: 6,
                    position: currentIndex,
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Exercise",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        children: [
                          Text("See more",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff027A48))),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Color(0xff027A48),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustiomCardExercise(
                        text: 'Relaxation',
                        assetpath: 'assets/Icons/Relaxation.png',
                        color: Color(0xffB692F6),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      CustiomCardExercise(
                        text: 'Meditation',
                        assetpath: 'assets/Icons/Meditation.png',
                        color: Color(0xffFAA7E0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustiomCardExercise(
                        text: 'Beathing',
                        assetpath: 'assets/Icons/Beathing.png',
                        color: Color(0xffFEB273),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      CustiomCardExercise(
                        text: 'Yoga',
                        assetpath: 'assets/Icons/Yoga.png',
                        color: Color(0xff7CD4FD),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            if (index == 1){
              Navigator.pushReplacementNamed(context, WorkOutPage.routeName);
            }else if (index == 2){
              Navigator.pushReplacementNamed(context, NewsPage.routeName);
            }
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/home_icon.png")),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/grid_icon.png")),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/calendar.png")),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/Icons/user_icon.png")),
              label: ' ',
            ),
          ],
        ));
  }
}
