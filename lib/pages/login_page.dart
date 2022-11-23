import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Username', labelText: 'Username'),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                          hintText: 'Enter Password', labelText: 'Password'),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: (() async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      }),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.check,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape: changeButton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //     style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                    //     onPressed: () {
                    //       // Navigator.push(context,
                    //       //     MaterialPageRoute(builder: ((context) {
                    //       //   return HomePage();
                    //       // })));
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text('Login')),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
