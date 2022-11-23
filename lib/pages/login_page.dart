import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
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
              'Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Username', labelText: 'Username'),
                  ),
                  TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: 'Enter Password', labelText: 'Password'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        print('Hi User!');
                      },
                      child: Text('Login'))
                ],
              ),
            )
          ],
        ));
  }
}
