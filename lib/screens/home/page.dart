part of 'home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Landing(),
    Explore(),
    Deals(),
    Orders(),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // resizeToAvoidBottomPadding: true,
        key: _scaffoldKey,
        floatingActionButton: trackButton(MediaQuery.of(context).size),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: AppStyles.backgroundColor,
        body: ResponsiveSafeArea(
          builder: (context, size) {
            return _children[_currentIndex];
          },
        ),
        bottomNavigationBar: bottomNavBar());
  }

  BottomNavigationBar bottomNavBar() {
    bool isIOS = Platform.isIOS;
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      onTap: onTabTapped,
      selectedItemColor: AppStyles.primaryColor,
      selectedLabelStyle: AppStyles.platformTextStyle(isIOS,AppStyles.primaryColor,20.0,FontWeight.w700),
      selectedFontSize: 20.0,
      selectedIconTheme: IconThemeData(
        color: AppStyles.primaryColor,
        size: 30
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black54,
      ),
      showUnselectedLabels: true,
      unselectedLabelStyle: AppStyles.platformTextStyle(isIOS,Colors.black,15.0,FontWeight.w500),
      elevation: 0,
      currentIndex: _currentIndex, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.local_dining),
          label: "Food",
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          label: "Explore",
        ),
        BottomNavigationBarItem(
            icon: Icon(MdiIcons.receipt),
            label: "Orders"
            ),
        BottomNavigationBarItem(
            icon: Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(MdiIcons.percentOutline),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppStyles.primaryColor,
                    ),
                  width: 6,
                  height: 6,

                ),
              ],
            )),
            label: "Deals",
            )
      ],
    );
  }
}
