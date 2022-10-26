// Model for langauges
import 'package:flutter/widgets.dart';

class Language {
  Language({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.languageCode,
  });

  final String id;
  final String title;
  final String imageUrl;
  final String languageCode;
}

class LangaugeProvider with ChangeNotifier {
  // A list from languages model
  final List<Language> _languages = [
    Language(
      id: '1',
      title: 'English',
      imageUrl: 'assets/images/English.png',
      languageCode: 'en',
    ),
    Language(
      id: '2',
      title: 'Arabic',
      imageUrl: 'assets/images/Arbic.png',
      languageCode: 'ar',
    ),
    Language(
      id: '3',
      title: 'िन्दी',
      imageUrl: 'assets/images/Urdu.png',
      languageCode: 'ur',
    ),
  ];
// getter of languages list

  List<Language> get languagesItems {
    return [..._languages];
  }
}
