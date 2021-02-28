import 'package:flutter/material.dart';
import 'package:plant_app/pages/details/details_page.dart';

import '../../../constants.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: "Sumantha",
            country: "Russia",
            price: 435,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: "Sumantha",
            country: "Russia",
            price: 435,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: "Sumantha",
            country: "Russia",
            price: 435,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image;
  final String title;
  final String country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding * 0.5,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding * 0.5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ]),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
