import 'package:flutter/material.dart';
import 'package:flutter_application_2/pertemuan12/floating.dart';
import 'package:flutter_application_2/pertemuan12/home.dart';
import 'package:flutter_application_2/pertemuan12/register.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String itemSelected = 'User';
  List items = ['User', 'Penyedia Jasa'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Back.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          margin: EdgeInsets.only(top: 270),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 210),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              Container(
                  color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        width: 300,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                label: Text('Username',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                label: Text('Password',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        width: 300,
                        child: DropdownButton(
                          items: items.map((item) {
                            return DropdownMenuItem(
                              child: Row(children: [Text(item)]),
                              value: item,
                            );
                          }).toList(),
                          value: itemSelected,
                          onChanged: (val) {
                            setState(() {
                              itemSelected = val as String;
                            });
                          },
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 200),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Passwort'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Floating()));
                    },
                    child: Text('Login')),
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    child: Text('Register')),
              )
            ],
          )),
    ));
  }
}
