import 'package:drawer_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/login_img.png",fit: BoxFit.cover
            ),
            SizedBox(
                height: 20.0,
            ),
            Text(
              "Welcome", style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter the Username",
                        labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter the Password",
                        labelText: "Password"
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                      onPressed: (){
                            Navigator.pushNamed(context, Homescreen(key: key));
                      } ,
                      child: Text ("LoginNow"),
                        style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      )
                  
                ],
              ),
            ),
          ],
        ),
    );
  }
}
