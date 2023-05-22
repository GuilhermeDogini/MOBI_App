import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'dart:async';
import '../utils/app_colors.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRemembered = false;
  bool obscurePassword = true;
  String userEmail = "";
  String userPassword = "";
  late Timer timer;
  late String currentTime;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    _getCurrentTime();
  }

  Future<void> authentication() async {
    final _baseUrl = 'https://app-test-final.herokuapp.com';
    Response response = await http.post(
      Uri.parse('$_baseUrl/auth/login'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "email": userEmail ,
        "password": userPassword
      }),
    );
    if (response.statusCode == 200) {
      Navigator.push(
       context,
       MaterialPageRoute(
        builder: (context) => TabsScreen(email: userEmail,),
        ));
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Erro de autenticação"),
            content: Text("Email ou senha inválidos"),
            actions: <Widget>[
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void _getCurrentTime() {
    DateTime now = DateTime.now().toUtc().subtract(Duration(hours: 3));
    currentTime = DateFormat('HH:mm:ss').format(now);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: AppColors.myCustomwhite,
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              child: Image.asset(
                "assets/images/logo.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Digite o seu usuário',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    onChanged: (email) {
                      setState(() {
                        userEmail = email;
                      });
                    },
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Digite a sua senha',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                      prefixIcon: Icon(Icons.lock_outlined),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                      ),
                    ),
                    onChanged: (password) {
                      setState(() {
                        userPassword = password;
                      });
                    },
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: isRemembered,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isRemembered = newValue ?? false;
                              });
                            },
                          ),
                          Text('Lembrar Autenticação'),
                        ],
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                  Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.myCustomBlackBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          authentication();
                        },
                        splashColor: Colors.white.withOpacity(0.3),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.myCustomYellow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.white.withOpacity(0.3),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            '$currentTime REGISTRAR PONTO',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.vpn_key_rounded,
                        color: Colors.black,
                        size: 15,
                      ),
                      Text(
                        'MobiToken',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
