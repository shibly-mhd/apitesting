import 'dart:developer';

import 'package:apifetch/model.dart';
import 'package:apifetch/services.dart';
import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  Services svc = Services();

  List<idmodel> listnew = [];

  void fetchdatas() async {
    log('data fetching');
    try {
      listnew = (await svc.getdata())!;
      notifyListeners();
      if (listnew.isNotEmpty) {
        log('value get succes${listnew.length}');
      } else {
        log('error');
      }

      notifyListeners();
    } catch (e) {
      log('Failed to fetch data: $e');
    }
    notifyListeners();
  }
}
