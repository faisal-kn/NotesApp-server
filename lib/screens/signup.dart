import 'package:flutter/material.dart';

import '../constant.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>
        FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: Center(
            child: Text(
              'Signup',
              style: TextStyle(
                color: headerTextColor,
                fontSize: headerTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body:
            SingleChildScrollView(
              child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: normalTextColor,
                      )),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: headerTextColor,
                      ),
                    ),
                    style: TextStyle(
                      color: normalTextColor,
                    ),
                  ),
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: normalTextColor,
                      )),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com',
                      labelStyle: TextStyle(
                        color: headerTextColor,
                      ),
                      hintStyle: TextStyle(color: normalTextColor),
                    ),
                    style: TextStyle(
                      color: normalTextColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter secure password',
                      labelStyle: TextStyle(
                        color: headerTextColor,
                      ),
                      hintStyle: TextStyle(color: normalTextColor),
                    ),
                    style: TextStyle(
                      color: normalTextColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      hintText: 'Enter the same password',
                      labelStyle: TextStyle(
                        color: headerTextColor,
                      ),
                      hintStyle: TextStyle(color: normalTextColor),
                    ),
                    style: TextStyle(
                      color: normalTextColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: buttonColor, borderRadius: BorderRadius.circular(100)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Signup',
                      style: TextStyle(color: Colors.white, fontSize: normalTextSize),
                    ),
                  ),
                ),
              ],
          ),
            ),
        ),
    );
  }
}
