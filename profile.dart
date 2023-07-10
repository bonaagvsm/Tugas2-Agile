import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 20,
      ),
      Text(
        'Profile',
        style: TextStyle(fontSize: 30),
      ),
      SizedBox(
        height: 40,
      ),
      Center(
          child: Column(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.people,
              size: 30,
            ),
          ),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.only(bottom: 150),
              child: Column(
                children: [
                  Text(
                    'Bona Simanullang',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('211112828@students.mikroskil.ac.id'),
                  Container(
                      margin: EdgeInsets.only(left: 100, top: 40),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {},
                            leading: Icon(Icons.favorite),
                            title: Text('My Favorite'),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Icon(Icons.people),
                            title: Text('Account'),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Icon(Icons.share),
                            title: Text('Share To Friend'),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Icon(Icons.info),
                            title: Text('Info'),
                          ),
                        ],
                      )),
                ],
              )),
        ],
      ))
    ]);
  }
}
