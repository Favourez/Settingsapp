import 'package:flutter/material.dart';
import 'package:functional/frencpage.dart';


/*
this class is set
 to convert between
 some languages*/
 
class Multilanguage extends StatelessWidget {
  const Multilanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // English
        Locale('fr', 'FR'), // French
        Locale('de', 'DE'), // German
      ],
      title: 'Language Demo',
      home: const Frenchpage(),
    );
  }
}

class GlobalWidgetsLocalizations {
  // ignore: prefer_typing_uninitialized_variables
  static var delegate;
}

class GlobalMaterialLocalizations {
  // ignore: prefer_typing_uninitialized_variables
  static var delegate;
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _showLanguageDialog(context);
              },
              child: const Text('Change Language'),
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Language'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                _buildLanguageOption(context, 'English', const Locale('en', 'US')),
                _buildLanguageOption(context, 'French', const Locale('fr', 'FR')),
                _buildLanguageOption(context, 'German', const Locale('de', 'DE')),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageOption(BuildContext context, String language, Locale locale) {
    return ListTile(
      title: Text(language),
      onTap: () {
        _changeLanguage(context, locale);
        Navigator.pop(context); // Close the language dialog
      },
    );
  }

  void _changeLanguage(BuildContext context, Locale locale) {
  }
}