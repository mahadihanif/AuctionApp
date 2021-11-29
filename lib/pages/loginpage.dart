import 'package:auction_app/pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.orange.shade400],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(100))),
            child: const Center(
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 26.0,
                  letterSpacing: 1.5
                ),
                )),        
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    )),
                ),
                
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(                
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        letterSpacing: 2.0
                      ),
                      ),
                    onPressed: user != null
                        ? null
                        : () async {
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> const HomePage()));
                          }),
                ElevatedButton(
                    child: const Text('Sign Out'),
                    onPressed: user == null
                        ? null
                        : () async {
                            await FirebaseAuth.instance.signOut();
                            setState(() {});
                          }),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
