import 'package:not_a_note/screens/home/detail_note/detail_note_view.dart';

import '../../base/base.dart';
import '../../screens/home/home_view.dart';
import '../../screens/splash/splash_view.dart';

class SPages {
  SPages._();

  static final listPages = [
    GetPage(name: "/", page: () => SplashPage()),
    GetPage(
      name: "/HomeView",
      page: () => HomeView(),
      children: [],
    ),
    GetPage(name: "/DetailNoteView", page: () => DetailNoteView()),
  ];
}
