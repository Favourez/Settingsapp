import 'package:flutter/material.dart';
import 'package:functional/homedark.dart';
import 'package:functional/multilanguage.dart';

class French extends StatelessWidget {
  const French({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Frenchpage extends StatefulWidget {
  const Frenchpage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<Frenchpage> {
  bool _isDarkMode = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
    // You can add your own logic here to handle the dark mode change
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Parametres'),
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
          child: Image.asset(
              'assets/profiles.png',
              fit: BoxFit.cover,
            ),
        ),
      
            ListTile(
              title: const Text('Mode Sombre'),
              trailing: Switch(
                value: _isDarkMode,
                onChanged: _toggleDarkMode,
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
                value: 'Francais',
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
                MaterialPageRoute(builder: (context) => SettingsPage2())
                );
                // Replace with your own logic to handle the logout action
              },
            ),

            // this sets a button to switch to the multilanguage page
            ListTile(
              title: const Text('Multi Language'),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Multilanguage())
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