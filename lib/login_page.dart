import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
/*    final email = TextEditingController();
    final pass = TextEditingController();*/

    return Scaffold(
      appBar: AppBar(title: Text("Login Sreen", style: TextStyle(color : Colors.white),),
    backgroundColor: Colors.blue,),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: [

            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 48.0,
              child: Image.asset('assets/icons8-flutter-48.png'),
            ),
            SizedBox(height: 20),

            TextFormField(
              /*controller: email,*/
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(height: 10),

            TextFormField(
              /*controller: pass,*/
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Colors.blue.shade100,
                elevation: 5.0,
                child: MaterialButton(
                  minWidth: 200.0,
                  height: 42.0,
                  onPressed: () {},
                  color: Colors.blue,
                  child: Text('Log In', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),

            FlatButton(
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {},
            ),

          ],
        ),
      ),
    );
  }
}