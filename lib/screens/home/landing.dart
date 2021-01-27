part of 'home.dart';

class Landing extends StatefulWidget {
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  bool isIOS = Platform.isIOS;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSafeArea(builder: (context, size) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(13.0, 20.0, 13.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              iconLeftText(
                  Icons.access_time,
                  16.0,
                  Colors.grey,
                  "Deliver now, to",
                  AppStyles.platformTextStyle(
                      isIOS, Colors.grey, 17.0, FontWeight.normal)),
              minibar("53, Awolowo Road, Ikoyi",isIOS),
              searchField(size),
              multipleInlineTexts("Est. delivery time: 35mins","Your first delivery is FREE!",isIOS),
              buildCarouselSlider(slideImage),
              Container(
                padding: EdgeInsets.all(7.5),
                child:designedText("Featured", AppStyles.platformTextStyle(
                      isIOS, Colors.black, 20.0, FontWeight.bold)),
              ),
              Container(
                height: size.height * 0.5,
                child: latestKitchens(kitchens),
              )
            ],
          ),
        ),
      );
    });
  }

  

  Widget searchField(Size size) {
    return Container(
      //  width: size.height * 0.32,
      padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
              width:size.width,
              child: TextFormField(
                enableSuggestions: true,
                // autocorrect: true,
                autofocus: true,
                // autovalidate: true,
                // validator: (val) => validateEmailField(val),
                onSaved: (String val) {},
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.grey[350]),
                    hintText: 'What are you craving?',
                    hintStyle: AppStyles.platformTextStyle(
                        isIOS, Colors.grey[350], 17.0, FontWeight.normal),
                    border: new OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16.0),
                    fillColor: AppStyles.getColor("F5F7FA")
                    //errorText: snapshot.error,
                    ),
                onChanged: (val) async {},
                keyboardType: TextInputType.text,
                // onChanged: bloc.changeUserPhone
              ),
            ),
          ),
          Expanded(
            flex: 1,
                      child: Container(
              // margin: EdgeInsets.only(left: 20),
              child: IconButton(
                icon: Icon(Icons.list, color: AppStyles.primaryColor, size: 45),
                onPressed: () => null,
              ),
            ),
          )
        ],
      ),
    );
  }

  

}

