import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moody/pages/WorkOut/mainPage2_workOut.dart';

import '../Moody/mainPage1_Moody.dart';
import 'mainPage3_News.dart';

class NewsPage extends StatefulWidget {
  static const String routeName = "News";
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    int selectedIndex = 2;
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(image: AssetImage("assets/Icons/newsFlower.png"))
              ,
              Text(
                "AliceCare"
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0,vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(

                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  hintText: "Articles, Video, Audio and More,...",
                  
                ),
              ),
              Container(
                width: double.infinity,
                height: 85,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => FilterChip(
                    label: Text("Discover"),
                    selectedColor: Color(0xffD6BBFB),
                    selected: isSelected,
                    backgroundColor: Colors.transparent,
                    shape: StadiumBorder(side: BorderSide()),
                    onSelected: (_) {
                      isSelected = !isSelected;
                      setState(() {});
                    },

                  ),
                  itemCount: 5,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hot topics",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        children: [
                          Text("See all",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff5925DC))),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Color(0xff5925DC),
                          ),
                        ],
                      )
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      height: 168.0,
                      viewportFraction: .8,

                    ),
                    items: [1, 2, 3, 4, 5, 6].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/Images/girl_1.png")),
                                  borderRadius: BorderRadius.circular(16),
                          ));
                        },
                      );
                    }).toList(),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Get Tips",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                      Container(
                        height: 220,
                        padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0x227F56D9),

                        ),
                        child:  Row(
                          children: [
                            Image(image: AssetImage("assets/Images/Doctor-PNG-Images 1.png")),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                      "Connect with doctors & \n get suggestions",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                  const Text(
                                      "Connect now and get\n expert insights ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                  FilledButton(onPressed: (){},
                                      style: ButtonStyle(
                                          backgroundColor:MaterialStateProperty.all(Color(0xff7f56d9)),
                                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                                      ),
                                      child:

                                  Text(
                                      "View detail",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      )
                                  )
                                  )

                                ],
                              ),
                            )

                          ],
                        ),
                      )
                    ],
                  ),




                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Cycle Phases and Period",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                  Row(
                    children: [
                      Text("See all",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5925DC))),
                      Icon(
                        Icons.arrow_forward_ios_rounded,

                        size: 18,
                        color: Color(0xff5925DC),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            if (index == 0) {
              Navigator.pushReplacementNamed(context, MoodyPage.routeName);
            } else if (index == 1) {
              Navigator.pushReplacementNamed(context, WorkOutPage.routeName);
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
        )
    );
  }
}
