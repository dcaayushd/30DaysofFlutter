import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final imageUrl = 'https://unsplash.com/photos/wiEVBfVykEI';
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('Aayush DC'),
                accountEmail: Text('dcaayush22@gmail.com'),
                currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/maleAvatar.png')),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              'Email',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
