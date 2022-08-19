import 'package:flutter/material.dart';
import 'shopping_page.dart';

class Secondscreen extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();
  String? email;
  String? password;

  Secondscreen({
    required this.email,
    required this.password,
  });

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
            Text(
              "Shopify",
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.green,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "User Name",
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 40),
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
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.green,
              height: 10,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            Container(
              width: 250,
              height: 80,
              padding: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ThirdScreen();

                  }));
                },
                style: ElevatedButton.styleFrom(primary: Colors.green),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
