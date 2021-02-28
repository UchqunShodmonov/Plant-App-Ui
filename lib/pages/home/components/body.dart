import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/constants.dart';

import 'feature_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plant.dart';
import 'title_with_morebtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
          RecommendPlant(),
          TitleWithMoreBtn(
            title: 'Feature Plants',
            press: () {},
          ),
          FeaturePlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
