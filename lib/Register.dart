import 'package:flutter/material.dart';
import 'Login.dart';

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  static const String _title = 'Amnesty Coffee';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const RegisterPages(),
      ),
    );
    return DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/Bg.jpg'), fit: BoxFit.cover),
        ));
  }
}



class RegisterPages extends StatefulWidget {
  const RegisterPages({Key? key}) : super(key: key);

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: const Text(
                  'Hi !!',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 10),
                child: const Text(
                  'Create a new account',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 10),
                )),
            Container(
              height: 200.0,
              width: 50.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/coffee.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              height: 60.0,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Terms and condition',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: ElevatedButton(
                  child: const Text('Sign Up'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(5, 10, 10, 5),
                child: const Text(
                  'Or sign up with',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 10),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/mail2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/google.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/apple.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  width: 35.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/fb.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Text("Already have an account?"),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => MyApp() ));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
