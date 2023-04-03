import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Daily Updates',style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: Colors.black
              ),),
              SizedBox(height: 10,),
              Container(child: Image.asset('assets/images/rectangle.png',)),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/Rectangle 5.png'),
                      SizedBox(height: 10,),
                      Text('Daily Auditions',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/Rectangle 6.png',),
                      SizedBox(height: 10,),
                      Text('Workshops',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/Rectangle 7.png',),
                      SizedBox(height: 10,),
                      Text('Open Auditions',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black
                      ),),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 4++0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/images/Rectangle 8.png'),
                      SizedBox(height: 10,),
                      Text('Location Based',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/Rectangle 10.png',),
                      SizedBox(height: 10,),
                      Text('Kids',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/Rectangle 10.png',),
                      SizedBox(height: 10,),
                      Text('Kids',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black
                      ),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(child: Image.asset('assets/images/Rectangle 9.png',)),

            ],
          ),
        ),
      ),
    );
  }
}
