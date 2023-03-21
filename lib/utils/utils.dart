import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../res/colors.dart';


class Utils {
  static void feildFocusChnage(
      BuildContext context, FocusNode current, FocusNode next) {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  static showToast(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static void flushBarErrorMessages(String? message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(15),
        message: message,
        borderRadius: BorderRadius.circular(8),
        // flushbarPosition: FlushbarPosition.TOP,
        duration: Duration(seconds: 5),
        backgroundColor: Colors.red,
        reverseAnimationCurve: Curves.easeInOut,
        positionOffset: 20,
        icon: Icon(
          Icons.error_outline,
          size: 28,
          color: Colors.white,
        ),
      )..show(context),
    );
  }

  static showSnackBar(String? message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.red, content: Text(message!)),
    );
  }



  static showDataAlert(String? message, String userId,BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Success",style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold
          ),),
          content: new Text(message!,style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold
          ),),
          actions: <Widget>[
            new ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColors.themeColor),
              child: new Text("OK",style: TextStyle(fontFamily:"Avenir",color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.bold)),
              onPressed: () {

              },
            ),
          ],
        );
      },
    );
  }


  static showPopUp(String? message, BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Account Blocked",style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold
          ),),
          content: new Text(message!,style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold
          ),),
          actions: <Widget>[
            new ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColors.themeColor),
              child: new Text("OK",style: TextStyle(fontFamily:"Avenir",color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  static showExitPopUp(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Are you sure you want to logout?"
                      ,style: TextStyle(fontFamily:"Avenir",color: Colors.black,fontSize: 18.0)),
                  SizedBox(height: 20),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, RoutesName.login);
                              },
                            child: Text("Yes",style: TextStyle(fontFamily:"Avenir",color: Colors.white,fontSize: 14.0,fontWeight: FontWeight.bold)),
                            style: ElevatedButton.styleFrom(
                                primary: AppColors.themeColor),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                //   print('no selected');
                                Navigator.of(context).pop();
                              },
                              child: Text("No", style: TextStyle(fontFamily:"Avenir",color: Colors.black,fontSize: 14.0)),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
