import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vbdau/res/colors.dart';

import '../../components/round_button.dart';

class PlansScreen extends StatefulWidget {
  const PlansScreen({Key? key}) : super(key: key);

  @override
  State<PlansScreen> createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('Flexible Plans',style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                 ]

              ),
            ),
            SizedBox(height: 30,),
            Text('Choose a plan that work best for you to explore',style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black
            ),),
            SizedBox(height: 30,),
            Container(
              height: 550,
              width: 380,
              child: Card(
               elevation: 10,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 102,
                              height: 86,
                              child: Image.asset('assets/images/appNameLogo.png')),
                          Padding(
                            padding: const EdgeInsets.only(top: 17,left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Monthly',style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                    color: Colors.black
                                ),),
                                Row(
                                  children: [
                                    Text('99',style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 45,
                                        color: AppColors.themeColor
                                    ),),
                                    SizedBox(width: 8,),
                                    Text('for 30 days',style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.black
                                    ),),
                                  ],
                                )

                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text('Access All Premium features',style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 21,
                          color: Colors.black
                      ),),
                      SizedBox(height: 30,),
                      RoundButton(
                          title: 'BUY PLANS',
                          // loading: auth.loading,
                          onPress: () {



                          })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
