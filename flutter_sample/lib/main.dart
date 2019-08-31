import 'package:flutter/material.dart';

void main() => runApp(RegistrationWidget());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Title(
              color: Colors.white,
              child: Text("Registration"),
//            title: "Registration",color: Colors.white,
            ),
          ),
          drawer: Drawer(
            child: Text("Sample 1"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: "First Name"),
                )
              ],
            ),
          )),
    );
  }
}

class RegistrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: RegistrationUI(),
    );
  }
}

class RegistrationUI extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationUI> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Title(
          color: Colors.white,
          child: Text("Registration"),
//            title: "Registration",color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: Text("Sample 1"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "First Name"),
                onFieldSubmitted: (value){

                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Last Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:
                    InputDecoration(hintText: "Email", icon: Icon(Icons.email)),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
            ),
//            Spacer(),
            RaisedButton(
                child: Text("Register"),

                color: Colors.deepPurple,
                )
          ],
        ),
      ),
    );
  }
}
