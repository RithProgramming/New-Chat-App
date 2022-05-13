import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

GlobalKey<FormState> _formkey = GlobalKey();

class InitState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Form(
      key: _formkey,
      child: Scaffold(
          body: SingleChildScrollView(
              child: Column(
        children: [
          Container(
            height: 250,
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
                    "Register",
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
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              controller: nameController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color(0xffF5591F),
                ),
                hintText: "Full Name",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Name";
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
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              controller: emailController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xffF5591F),
                ),
                hintText: "Email",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Email";
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
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextFormField(
              controller: phoneController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                focusColor: Color(0xffF5591F),
                icon: Icon(
                  Icons.phone,
                  color: Color(0xffF5591F),
                ),
                hintText: "Phone Number",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Phone Number";
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
              boxShadow: const [
                BoxShadow(
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Your Password";
                }
                return null;
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_formkey.currentState!.validate()) {
                print('Valid');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('បញ្ចូលទិន្នន័យមិនទាន់គ្រប់លក្ខខណ៍'),
                  duration: Duration(seconds: 3),
                ));
              }
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [(new Color(0xffF5591F)), new Color(0xffF2861E)],
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
                "REGISTER",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have Already Member?  "),
                GestureDetector(
                  child: const Text(
                    "Login Now",
                    style: TextStyle(color: Color(0xffF5591F)),
                  ),
                  onTap: () {
                    // Write Tap Code Here.
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
