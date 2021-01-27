
import 'package:CoKitchen/util/utils.dart';
import 'package:CoKitchen/widgets/texts.dart';
import 'package:CoKitchen/widgets/widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

CarouselSlider buildCarouselSlider(List<String> images) {
  return CarouselSlider(
    options: CarouselOptions(

      height: 160,
      viewportFraction: 0.78,
      aspectRatio: 2.3,
      enableInfiniteScroll: true,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeStrategy: CenterPageEnlargeStrategy.scale,
      enlargeCenterPage: true,
    ),
    items: images.map(
      (image) {
        return Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: cacheImage(image),
          ),
        );
      },
    ).toList(),
  );
}

Widget buildDot(int index, int n) {
  return Container(
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
      color: (n == index) ? Colors.white : Colors.black38,
      shape: BoxShape.circle
    ),
    child: Container(
      padding: EdgeInsets.all(1.0),
      height: 7.0,
      width: 7.0,
      decoration: BoxDecoration(
        color: (n == index) ? Colors.black38 : null,
          
          shape: BoxShape.circle
          ),
    ),
  );
}

Widget cacheImage(String url) {
  return CachedNetworkImage(
    imageUrl: url,
    imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: imageProvider,
        fit: BoxFit.cover,
      ),
    )),
    placeholder: (context, url) => loader(),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}

Widget loader() {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    alignment: Alignment.center,
    child: Image.asset(
      "assets/images/ripple.gif",
      width: 200,
      height: 100,
    ),
  );
}



Widget minibar(String text, bool isIOS) {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        iconRightText(
            MdiIcons.chevronDown,
            26.0,
            AppStyles.primaryColor,
            text,
            AppStyles.platformTextStyle(
                isIOS, Colors.black, 17.0, FontWeight.bold)),
        Spacer(),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey[100]),
          child: IconButton(
            icon: Icon(Icons.person_outline, color: AppStyles.primaryColor),
            onPressed: () => null,
          ),
        )
      ],
    ),
  );
}
