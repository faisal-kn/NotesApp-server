import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          ),
        ),
        SizedBox(
          height: 50.0,
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
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
