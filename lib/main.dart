import 'package:flutter/material.dart';
import 'sign_up_screen.dart';
import 'shopping_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();
  String? email;
  String? password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SafeArea(
              child: Container(
                width: 200,
                  child: Image.network(
                      "https://globalbookkeeping.net/images/posts/1560141279.jpg")),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                "Shopify",
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.green,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              onChanged: (newValue) {
                email = newValue;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.green,
                ),
                helperText: "8 characters only / without: # , ^ ,*",
              ),
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 40),
            Divider(
              color: Colors.green,
              height: 20,
              thickness: 4,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Text(
                  'Forget Password',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ThirdScreen(
                    );

                  }));
                },
                child: Text("Sign In"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("don`t have an acount?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Secondscreen(
                              password: passwordController.text,
                              email: email,
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    )),
              ],
            ),
            Divider(
              color: Colors.green,
              height: 20,
              thickness: 4,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}
