import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {


  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _username;
  String _password;
  bool _switchState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("LOGIN"),
        // ),
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/crystal.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(.5), BlendMode.hardLight))),
      padding: EdgeInsets.all(10),
      child: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 3),
              ),
              child: Container(
                  width: 80,
                  height: 80,
                  child: Icon(
                Icons.person, size: 70,
              )),
            ),
            SizedBox(
              height: 70,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Username",
                  filled: true,
                  fillColor: Colors.white.withOpacity(.8)),
              onChanged: (String value) {
                setState(() {
                  _username = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.white.withOpacity(.8)),
              obscureText: true,
              onChanged: (String value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: SwitchListTile(
                  inactiveThumbColor: Colors.deepOrange,
                  inactiveTrackColor: Colors.white,
                  activeTrackColor: Colors.deepOrange,
                  value: _switchState,
                  title: Text(
                    "Accept Terms",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                  onChanged: (bool value) {
                    setState(() {
                      _switchState = value;
                    });
                  },
                  activeColor: Colors.white,
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              child: RaisedButton(
                elevation: 4,
                child: Text("LOGIN"),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(title: Text("Status"),content: Text("Logged In"),);
                    }
                  );
                },
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
