import 'package:flutter/material.dart';
import 'package:functional/homescreen.dart';
import 'package:functional/multilanguage.dart';
import 'package:functional/spanish.dart';

class Homedark extends StatelessWidget {
  const Homedark({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingsPage2 extends StatefulWidget {
  const SettingsPage2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage2> {
  bool _isDarkMode = true;

   set _currentLanguage(String? currentLanguage) {}

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
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 44, 16, 6),
          title: const Text('Settings'),
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
              title: const Text('Dark Mode'),
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
              title: const Text('Language'),
              trailing: DropdownButton<String>(
                value: 'English',
                items: <String>['English', 'Spanish', 'French', 'German']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

                 //this function tells the machine what to do when one of our dropdown options is choosen
                onChanged: (String? value) {
                  // write code to execute what happens durng selection
                  setState(() {
                     _currentLanguage = value;
                  });

                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Spanishpage()) );
                 },
                
              ),
            ),

            // this code helps switch between light and dark modes
            ListTile(
              title: const Text('Light Mode'),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsPage1())

                );
                // Replace with your own logic to handle the logout action
              },
              
            ),

            //this sets a button to open the multipage 
            ListTile(
              title: const Text('Multi Language'),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Multilanguage())
                );
                // Replace with your own logic to handle the logout action
              },
            )
          ],
        ),
      ),
    );
  }

}