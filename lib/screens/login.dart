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
                color: Colors.black,
              ))
        ],
        leading: Icon(
          Ionicons.person,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text(
                "Login",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 30,
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
                height: 40,
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
