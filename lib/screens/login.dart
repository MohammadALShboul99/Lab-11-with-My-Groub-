import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab11/Component/ButtoninLogin.dart';
import 'package:lab11/Component/textFelied.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Ionicons.menu,
                color: Colors.blue,
              ))
        ],
        leading: Icon(
          Ionicons.person,
          color: Colors.blue,
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: SweepGradient(colors: [
          Color(0xFF4285F4),
          Color.fromARGB(255, 11, 117, 240),
          Color.fromARGB(255, 65, 108, 248),
          Color.fromARGB(210, 69, 96, 248),
          Color(0xFF4285F4),
        ])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Text_fel(
                obscure: false,
                TypeInput: "Email",
              ),
              Text_fel(
                obscure: true,
                TypeInput: "Password",
              ),
              SizedBox(
                height: 25,
              ),
              My_button(
                onPressed: () {
                  Navigator.pushNamed(context, "Home_page");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
