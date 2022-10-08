import 'dart:ui';

import 'package:blocbase/app/modules/home/home_list.dart';
import 'package:blocbase/common/data/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_form_filed/text_form_filed.dart';

class LogIn extends StatefulWidget {
  @override
  LogInState createState() => LogInState();
}

class LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.lightBlue[600],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 6),
              child: Column(
                children: [
                  SizedBox(height: height / 7),
                  SizedBox(
                    height: height * 0.15,
                    width: height * 0.15,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                  CustomFormTextField(
                    title: 'Email',
                    hintText: 'tt@email.com',
                    obligatory: true,
                    fillColor: Colors.cyanAccent,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please Enter Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  CustomFormTextField(
                    fillColor: Colors.cyanAccent,
                    title: 'PassWord',
                    hintText: '1234',
                    obligatory: true,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please Enter PassWord';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 35),
                  Container(
                    width: width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                            return HomeList();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent[100],
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15))),
                        child: Text(
                          "Login Now",
                          style: GoogleFonts.montserrat().merge(TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                        )),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot PassWord?',
                    style: GoogleFonts.roboto().merge(
                      TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    )),
                SizedBox(width: width / 10),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
