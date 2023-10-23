import 'package:flutter/cupertino.dart';

class CustiomCardExercise extends StatelessWidget {
  final String text ;
  final String assetpath ;
  final Color color;

  CustiomCardExercise({super.key,
    required this.text,
    required this.assetpath,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: color.withOpacity(0.4),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage(assetpath),),
            Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Interval",
                )
            )
          ],
        ),
      ),
    );
  }
}
