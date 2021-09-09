import 'package:flutter/material.dart';

import '../constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: headerTextColor,
                fontSize: headerTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
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
            SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: normalTextColor, fontSize: normalTextSizeSmall),
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
              height: 50,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'New User? ',
            //       style: TextStyle(
            //         color: normalTextColor,
            //         fontSize: normalTextSizeSmall,
            //       ),
            //     ),
            //     TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         'Create Account',
            //         style: TextStyle(
            //           color:headerTextColor,
            //           fontSize:normalTextSizeSmall,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ]),
        ),
      ),
    );
  }
}
