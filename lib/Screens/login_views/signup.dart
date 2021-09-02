// @dart=2.9

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  var _emailcontroller = TextEditingController();
  var _passwordcontroller = TextEditingController();
  var _namecontroller = TextEditingController();
  var _phoneController = TextEditingController();
  var _passworConfirmcontroller = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'let\'s get started!',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Create an account to Q allure to get all features',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 25),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            style: TextStyle(color: Colors.blue),
                            controller: _namecontroller,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            autofocus: false,
                            validator: (value) =>
                                value.isEmpty ? 'please enter your name' : null,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField( style: TextStyle(color: Colors.blue),
                            controller: _emailcontroller,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            autofocus: false,
                            validator: (value) => value.isEmpty
                                ? 'please enter your email'
                                : null,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField( style: TextStyle(color: Colors.blue),
                            controller: _phoneController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              hintText: 'phone',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            autofocus: false,
                            validator: (value) => value.isEmpty
                                ? 'please enter your password'
                                : null,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField( style: TextStyle(color: Colors.blue),
                            obscureText: true,
                            controller: _passwordcontroller,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            autofocus: false,
                            validator: (value) => value.isEmpty
                                ? 'please enter your password'
                                : null,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField( style: TextStyle(color: Colors.blue),
                            obscureText: true,
                            controller: _passworConfirmcontroller,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'confirm password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            autofocus: false,
                            validator: (value) => value.isEmpty
                                ? 'please enter your password'
                                : null,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 35),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                child: Text(
                                  'Create',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  },
                                  child: Text('Login here'))
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
