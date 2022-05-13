// ignore_for_file: prefer_const_constructors, unnecessary_new, sized_box_for_whitespace

import 'package:chat_app/Home/char_app.dart';
import 'package:chat_app/Home/singup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

GlobalKey<FormState> _formkey = GlobalKey();

class _LoginScreen1State extends State<LoginScreen1> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Form(
      key: _formkey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(90)),
                  color: new Color(0xffF5591F),
                  gradient: LinearGradient(
                    colors: [(new Color(0xffF5591F)), new Color(0xffF2861E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "images/app_logo.png",
                        height: 90,
                        width: 90,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                      child: const Text(
                        "Login Chat App",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )
                  ],
                )),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextFormField(
                  controller: emailController,
                  cursorColor: Color(0xffF5591F),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color(0xffF5591F),
                    ),
                    hintText: "Enter Email",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  validator: (context) {
                    if (context == null || context.isEmpty) {
                      return "Please Input Your E-mail Address";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffEEEEEE),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 100,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextFormField(
                  controller: passwordController,
                  cursorColor: const Color(0xffF5591F),
                  decoration: const InputDecoration(
                    focusColor: Color(0xffF5591F),
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(0xffF5591F),
                    ),
                    hintText: "Enter Password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  validator: (context) {
                    if (context == null || context.isEmpty) {
                      return "Please Input Your Password Address";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here
                  },
                  child: const Text("Forget Password?"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_formkey.currentState!.validate()) {
                    if (emailController.text == "admin" &&
                        passwordController.text == "admin") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatApp()));
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('ការចូលគឺត្រឹមត្រូវ')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Email និង Password របស់អ្នកគឺខុស.'),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('បញ្ចូលទិន្នន័យមិនទាន់គ្រប់លក្ខខណ៍'),
                      duration: Duration(seconds: 3),
                    ));
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        // ignore: prefer_const_constructors, unnecessary_new
                        colors: [
                          (new Color(0xffF5591F)),
                          new Color(0xffF2861E)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.facebook.com/images/fb_icon_325x325.png'))),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg'))),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't Have Any Account?  "),
                    GestureDetector(
                      child: const Text(
                        "Register Now",
                        style: TextStyle(color: Color(0xffF5591F)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
