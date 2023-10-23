import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeelingIcon extends StatelessWidget {
  String textTitle;
  String assetsPath;
  FeelingIcon({super.key,
    required this.textTitle,
    required this.assetsPath,
  }
  );

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffE4E7EC)
          ),
          child: Image(image: AssetImage(assetsPath)),
        ),
        Text(
            textTitle,
            style: theme.textTheme.bodyMedium
        )
      ],
    );
  }
}
