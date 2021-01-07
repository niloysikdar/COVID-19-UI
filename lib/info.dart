import 'package:COVID_19/constants.dart';
import 'package:COVID_19/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(left: 15.0, top: 35.0),
                height: 340.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFFF1212),
                      Color(0xFFE86464),
                    ],
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/virus.png"),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 45.0,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 13.0),
                            child: SvgPicture.asset(
                              "assets/icons/coronadr.svg",
                              width: 185,
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                            top: 15.0,
                            left: 160.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Know about \nCOVID-19",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: TitleTextStyle,
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SymptomsCard(
                            image: "assets/images/cough.png",
                            title: "Cough",
                          ),
                          SymptomsCard(
                            image: "assets/images/fever.png",
                            title: "Fever",
                          ),
                          SymptomsCard(
                            image: "assets/images/headache.png",
                            title: "Headache",
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    "Prevention",
                    style: TitleTextStyle,
                  ),
                  PreventionCard(
                    image: "assets/images/wear_mask.png",
                    title: "Wear a face mask",
                    text:
                        "Maintain a safe distance from anyone who is coughing or sneezing.Wear a mask when physical distancing is not possible.",
                  ),
                  PreventionCard(
                    image: "assets/images/wash_hands.png",
                    title: "Wash yor hands",
                    text:
                        "Clean your hands often. Use soap and water, or an alcohol-based hand rub.",
                  ),
                  SizedBox(height: 25.0),
                  Container(
                    child: Center(
                      child: Text(
                        "Made with ❤ by Niloy Sikdar",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventionCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      padding: EdgeInsets.all(15.0),
      height: 140.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFFE5E5E5),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFB7B7B7),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(10.0, 10.0),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(image),
          SizedBox(width: 5.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  title,
                  style: TitleTextStyle,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: TextLightColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SymptomsCard extends StatelessWidget {
  final String image;
  final String title;
  const SymptomsCard({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(5.0),
      height: 100.0,
      width: 85.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFFE5E5E5),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFB7B7B7),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(10.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(image),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
