import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/Home_Screen.dart';
import 'package:task3/Splash_Screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();

  TextEditingController passcontroller = TextEditingController();

  TextEditingController namecontroller = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  bool check =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "talabat",
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Center(
                    child: Text(
                      "Sign up for free",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  TextFormField(
                    controller: namecontroller,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Name must not be null";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      prefixIcon: Icon(Icons.person, color: Colors.deepOrange),
                    ),
                    onFieldSubmitted: (object) {
                      print(object);
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Email must not be null";
                      }
                      return null;
                    },
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      prefixIcon: Icon(Icons.email, color: Colors.deepOrange),
                    ),
                    onFieldSubmitted: (object) {
                      print(object);
                    },
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextFormField(
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Password must not be null";
                        }
                        return null;
                      },
                      controller: passcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        prefixIcon: Icon(Icons.lock, color: Colors.deepOrange),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      ),
                      onFieldSubmitted: (object) {
                        print(object);
                      },
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Checkbox(value: check, onChanged: (value) {
                        setState(() {
                          check=value!;
                        });
                      }),
                      Text(
                        "Rmember me",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 100.0),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.deepOrange,
                          ),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: (
                                ) {
                              if(formKey.currentState!.validate()){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                  return  HomeScreen(name: namecontroller.text,);
                                }
                                )
                                );
                              }

                            },
                            child: Text(
                              "Creat Account",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
