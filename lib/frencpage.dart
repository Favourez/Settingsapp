import 'package:flutter/material.dart';
import 'package:functional/homedark.dart';

class Frenchpage extends StatelessWidget {
  const Frenchpage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Paremetres'),
          leading: Container(
            padding: EdgeInsets.zero,
            width: 40,
            height: 40,
            child: Image.asset(
              'assets/logo.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),

          centerTitle: true,
        ),
        body: ListView(
          children: [
/*
the class below creates a rectangle to contain 
various designs */

        Container(
          width: 379,
          height: 911,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x264B4B4B),
                blurRadius: 16,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
        ),
      
            ListTile(
              title: const Text('Notifications'),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {
                  // Replace with your own logic to handle the switch state change
                },
              ),
            ),
            ListTile(
              title: const Text('Langage'),
              trailing: DropdownButton<String>(
                value: 'Anglais',
                onChanged: (String? newValue) {
                  // Replace with your own logic to handle the dropdown value change
                },
                items: <String>['Anglais', 'Espagnol', 'Francais', 'Allemagne']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            //this swiches to dark mode
            ListTile(
              title: const Text('Mode Sombre'),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Homedark())
                );
                // Replace with your own logic to handle the logout action
              },
            ),
          ],
        ),
      ),
    );
  }

}