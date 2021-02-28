import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'title_with_custom_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(
            title: title,
          ),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
