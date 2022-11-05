import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('this is a title'),
     ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Harshiv Rana'),
                accountEmail: Text('ranaharshiv01@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: Icon(
                    Icons.person,
                  ),
                ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){
                print("home menu is clicked.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('User Profile'),
              leading: Icon(Icons.person),
              onTap: (){
                print("profile menu is clicked.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Appointment'),
              leading: Icon(Icons.book),
              onTap: (){
                print("appointment menu is clicked.");
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout  ),
              onTap: (){
                print("logout  is clicked.");
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
