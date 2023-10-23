import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkOutProgram extends StatelessWidget {
  const WorkOutProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      decoration:BoxDecoration(
        color: Color(0xffEAECF5)
      ),
        child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color (0xffE4E7EC)
                ),
                child: Text(
                    "7 days",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Morning Yoga",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )
                  ),
                  Text(
                      "Improve mental focus.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )
                  ),
                ],
              ),
              Row(children: [
                Icon(Icons.access_time_outlined),
                Text("30 min")
              ],)
            ],
          ),
          Image.asset("assets/Images/[removal 2.png")
        ],
    ),
    );
  }
}
