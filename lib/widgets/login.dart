import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 135.0,
      ),
      Padding(
        //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          decoration: InputDecoration(
            // border: OutlineInputBorder(),
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
        padding:
            const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
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
      SizedBox(
        height: 30.0,
      ),
      TextButton(
        onPressed: () {
          //TODO FORGOT PASSWORD SCREEN
        },
        child: Text(
          'Forgot Password',
          style:
              TextStyle(color: normalTextColor, fontSize: normalTextSizeSmall),
        ),
      ),
      Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(100)),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: normalTextSize),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'New User? ',
            style: TextStyle(
              color: normalTextColor,
              fontSize: normalTextSizeSmall,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Create Account',
              style: TextStyle(
                color: headerTextColor,
                fontSize: normalTextSizeSmall,
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
