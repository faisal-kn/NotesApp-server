import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/widgets/login.dart';
import 'package:notesapp/widgets/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool newAccount = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text('Notes',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: headerTextSize,
                fontFamily: 'Roboto',
                color: headerTextColor,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      this.newAccount = false;
                    });
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: headerTextSizeSmall,
                      fontWeight: FontWeight.w900,
                      color: categoryHeaderColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      this.newAccount = true;
                    });
                  },
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      fontSize: headerTextSizeSmall,
                      fontWeight: FontWeight.w900,
                      color: normalTextColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: !newAccount ? LoginWidget() : SignUpWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
