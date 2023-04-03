import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbdau/screens/Dashboard/contact_us.dart';
import 'package:vbdau/screens/Dashboard/dashboard_screen.dart';
import 'package:vbdau/screens/Dashboard/plans_screen.dart';
import 'package:vbdau/screens/Dashboard/profile_screen.dart';

import 'more_screen.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({Key? key}) : super(key: key);

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(tabBar: CupertinoTabBar(
      activeColor: Colors.red,
      items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.home_filled),
           label: 'Home',
         ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Plans',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_support),
          label: 'Contact Us',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more),
          label: 'More',
        ),
    ],
    ),
        tabBuilder: (context,index){

           switch(index){
             case 0:
               return CupertinoTabView(
                 builder: (context){
                   return CupertinoPageScaffold(child: DashboardScreen());
                 }
               );
             case 1:
               return CupertinoTabView(
                   builder: (context){
                     return CupertinoPageScaffold(child: PlansScreen());
                   }
               );
             case 2:
               return CupertinoTabView(
                   builder: (context){
                     return CupertinoPageScaffold(child: ContactUs());
                   }
               );
             case 3:
               return CupertinoTabView(
                   builder: (context){
                     return CupertinoPageScaffold(child: ProfileScreen());
                   }
               );
             case 4:
               return CupertinoTabView(
                   builder: (context){
                     return CupertinoPageScaffold(child: MoreScreen());
                   }
               );
           }
           return Container();
        }
    );
  }
}



