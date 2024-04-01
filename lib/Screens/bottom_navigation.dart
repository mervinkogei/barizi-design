import 'package:barizi/Screens/explore.dart';
import 'package:barizi/Screens/history.dart';
import 'package:barizi/Screens/home.dart';
import 'package:barizi/Screens/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
   final int? currentPageToNavigate;
  const BottomNavigation({super.key, this.currentPageToNavigate});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class CustomPageRoute extends MaterialPageRoute {
  // ignore: use_super_parameters
  CustomPageRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}



class _BottomNavigationState extends State<BottomNavigation>  with WidgetsBindingObserver{

/// Add Navigators keys for the Bottom Navigation Items
final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.currentPageToNavigate ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
            child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
            selectedFontSize: 13,
            unselectedFontSize: 13,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon:  Icon(Icons.home, size: 23,color: Theme.of(context).cardColor,),
                activeIcon: Icon(Icons.home, color: Colors.black, size: 23,),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 23,color: Theme.of(context).cardColor),
                activeIcon:  Icon(Icons.search, color: Colors.black, size: 23,),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined, size: 23,color: Theme.of(context).cardColor),
                activeIcon:  Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 23,),
                label: 'History',
              ),
             BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 23,color: Theme.of(context).cardColor),
                activeIcon: Icon(Icons.person, color: Colors.black, size: 23,),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            // selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              Navigator.pushReplacement(
                  context,
                  CustomPageRoute(
                      builder: (context) =>
                          BottomNavigation(currentPageToNavigate: index)));
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        )),
        body: Stack(
          children: [
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
          ],
        ),
      );
  }  

  
  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          const HomeScreen(),
          const ExploreScreen(),
          const HistoryScreen(),
          const ProfileScreen(),
        ].elementAt(index);
      },
    };
  }

  
  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name]!(context),
          );
        },
      ),
    );
  }
}
