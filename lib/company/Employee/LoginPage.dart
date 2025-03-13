

import 'package:flutter/material.dart';
import 'package:project/company/Employee/ForgetPassword.dart';
import 'package:project/company/Employee/SignUpPage.dart';
import 'package:project/main.dart';
class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body:
       SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 60),
                    SizedBox(height: 20),
                    Container(

                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(

                      child: Center(
                        child: Text(
                          'Here your dreams will come true',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) => value!.isEmpty ? 'Username is required' : null,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      cursorColor: Colors.white,
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      validator: (value) => value!.isEmpty ? 'Password is required' : null,
                    ),
                    SizedBox(height: 10),

                    SizedBox(height: 20),
                           Container(

                             width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30),

                        ), child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CustomBottomNavBar(),));
                          },
                          child: Text(
                            ' Login',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),

                        ),
                      ),

                    SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',

                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage(),
                                    ));
                              },
                              child: Text(
                                ' Sign up',
                                style: TextStyle(color: Colors.red[800], fontWeight: FontWeight.bold),
                              ),
                            ),


                          ],
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgetPasswordPage(),
                                ));
                          },
                          child: Text('Forget password?'),
                        ),
                      ],
                    ),
                    SizedBox(height: 30), // Added space to prevent content from being blocked by the keyboard
                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }

}
