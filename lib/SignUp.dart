
import 'package:flutter/material.dart';
import 'Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
          ),
          const SizedBox(height: 70,),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Create Account, it's free",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          // blurRadius: 6,
                          spreadRadius: 1,
                          // offset: const Offset(1, 1),
                          // color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter name",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        )
                    ),
                    onChanged: (value) {
                      // userNameTemp = value;
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          // blurRadius: 6,
                          spreadRadius: 1,
                          // offset: Offset(1, 1),
                          // color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter email@",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                    onChanged: (value) {
                      // userEmailTemp = value;
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          // blurRadius: 6,
                          spreadRadius: 1,
                          // offset: const Offset(1, 1),
                          // color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Password ",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                    onChanged: (value) {
                      // userPassTemp = value;
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 1,
                        )
                      ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Confirm Password ",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 45,),
          Container(
              width: w*0.5,
              height: h*0.08,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: FilledButton(
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow
                    // fontWeight: FontWeight.bold
                  ),
                ),
                onPressed: () {
                  // myUsers.addUser(userNameTemp, userEmailTemp, userPassTemp);
                  // userPassTemp = "";
                  // userEmailTemp = "";
                  // userNameTemp = "";
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              )
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Already have an account?"),
              TextButton(
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.yellow),
                ),
                onPressed: () {
                  //go back to sign in screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
