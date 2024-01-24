/*this project aims at building the settings page part of the File manager Project

we start by importing material.dart to gain access to various widgets, classes and utilities */
import 'package:flutter/material.dart';
import 'package:functional/homescreen.dart';

//the class MyApp is like the mother class fromm which our remaining classes will be built
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SettingsPage1(), //tthis starts us on the homescreen page
    );

    
  }
}

/*
the classbelow is aimed at creating a switch button
for the light and adrk modes
it extends the stlwidget */

class Switchbutton extends StatelessWidget {
  const Switchbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 56,
          height: 29,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 56,
                  height: 29,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE5386D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 3,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/* 
this class inserts the user image to our project */

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 60,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("assets/user.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MyApp(
  ));
}

