import 'dart:io';

import 'package:CoKitchen/model/models.dart';
import 'package:CoKitchen/util/utils.dart';
import 'package:CoKitchen/widgets/texts.dart';
import 'package:CoKitchen/widgets/widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget latestKitchens(List<Kitchen> data) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return KitchenCard(
          kitchen: data[index],
        );
      },
      itemCount: data.length,
    ),
  );
}


class KitchenCard extends StatefulWidget {
  const KitchenCard({Key key, @required this.kitchen}) : super(key: key);
  final Kitchen kitchen;

  @override
  _KitchenCardState createState() => _KitchenCardState();
}

class _KitchenCardState extends State<KitchenCard> {
  bool fav;
  PageController _controller;
  int active = 0;
  @override
  void initState() {
    fav = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 4.5,
        color: Colors.white,
        shadowColor: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: <Widget>[
                getImage(widget.kitchen.imageBannerUrl, context),
                Align(
                  alignment: Alignment.topRight,
                  child: favourite(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: imageflow(widget.kitchen.imageBannerUrl),
                ),
              ]),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: getLogo(widget.kitchen.logoUrl)),
                  Expanded(
                    flex: 4,
                    child: shortDescription(
                        widget.kitchen.title, widget.kitchen.shortDescription),
                  ),
                  Expanded(flex: 1, child: viewBtn()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  getImage(List<String> url, BuildContext context) {
    return PageView(
        controller: _controller,
        onPageChanged: (index) {
          // print(index);
          setState(() {
            active = index;
          });
        },
        children: url.map((e) => cacheImage(e)).toList());
  }

  imageflow(List<String> url) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildDot(
              active,
              0
            ),
            SizedBox(width:5,),
            buildDot(
              active,
              1
            ),
            SizedBox(width:5,),
            buildDot(
              active,
              2
            ),
          ]),
    );
  }

  getLogo(String url) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 70.0,
      height: 70.0,
      child: CachedNetworkImage(
        imageUrl: url,
        imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        )),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }

  shortDescription(String title, String description) {
    bool isIOS = Platform.isIOS;
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          designedText(
              title,
              AppStyles.platformTextStyle(
                  isIOS, Colors.black, 20.0, FontWeight.bold)),
          designedText(
              description,
              AppStyles.platformTextStyle(
                  isIOS, Colors.grey, 17.0, FontWeight.normal))
        ],
      ),
    );
  }

  viewBtn() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: IconButton(
        icon: Icon(Icons.chevron_right, color: AppStyles.primaryColor),
        onPressed: () => null,
      ),
    );
  }

  favourite() {
    return Container(
        // height: 270.0,
        padding: EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () => setState(() {
            fav = !fav;
          }),
          child: fav
              ? Icon(
                  Icons.favorite,
                  size: 30.0,
                  color: Colors.red,
                )
              : Icon(
                  Icons.favorite_border,
                  size: 30.0,
                  color: Colors.white,
                ),
        ));
  }
}
