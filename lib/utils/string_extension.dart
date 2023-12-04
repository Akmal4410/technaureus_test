// import 'package:flutter/material.dart';

extension StringExtension on String {
  String toCapital() {
    List<String> words = split(' ');

    for (int i = 0; i < words.length; i++) {
      String word = words[i];

      if (word.isNotEmpty) {
        String firstLetter = word[0].toUpperCase();

        if (word.length > 1) {
          String restOfWord = word.substring(1);
          words[i] = firstLetter + restOfWord;
        } else {
          words[i] = firstLetter;
        }
      }
    }

    return words.join(' ');
  }
}
