import 'package:flutter/widgets.dart';
import 'package:poc_flutter_bloc/app/app.dart';
import 'package:poc_flutter_bloc/home/home.dart';
import 'package:poc_flutter_bloc/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
