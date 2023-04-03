import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/round_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 82),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black, // replace with your desired color
                    width: 4.0,
                  ),
                ),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/appNameLogo.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80,),
              Row(
                children: [
                  Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Sample Name',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Avenir'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.phone),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      '1234567890',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Avenir'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.email_outlined),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'vbdu@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Avenir'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.male_outlined),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Male',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Avenir'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.real_estate_agent),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      '16-30',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Avenir'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.only(left: 50,right: 50),
                child: RoundButton(
                    title: 'LOGOUT',
                    // loading: auth.loading,
                    onPress: () {

                      // auth.loginApi(data, context);

                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
