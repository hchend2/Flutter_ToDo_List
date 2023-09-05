import 'package:flutter/material.dart';
import 'package:flutter_todo_list/SignUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


enum LoginStatus {notSignIn, signIn}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 75,),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
                "My ToDos",
                style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
          const SizedBox(height: 50,),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                    "plan your day ahead",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.yellow),
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        // blurRadius: 6,
                        spreadRadius: 1,
                        // offset: Offset(1, 1),
                        // color: Colors.grey.withOpacity(0.3)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter e-mail @",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                        borderRadius: BorderRadius.circular(20),
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
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        // blurRadius: 6,
                        spreadRadius: 1,
                        // offset: Offset(0.5, 0.5),
                        // color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    // onChanged: (value) {
                    //   // userPassTemp = value;
                    // },
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    TextButton(
                      onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: context) => RessetPassword()),
                      //   );
                      },
                      child: const Text(
                          "Forgot your Password?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            width: w*0.5,
            height: h*0.08,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: FilledButton(
              child: const Text("Login",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),
              onPressed: () =>{
                // Navigator.push(MaterialPageRoute(builder: context)=> welcomPage()),
              },
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                child: const Text(
                  "Create account",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.yellow
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SignUp()),);
                },
              )
            ],
          )
        ],
      )
    );
  }
}
