import 'package:not_a_note/base/lifecycle/b_page.dart';
import 'package:not_a_note/component/shared/utils.dart';
import 'package:not_a_note/model/note_model.dart';

class HomeState {
  late RxList<NoteModel> lstNotes;

  HomeState() {
    lstNotes = [
      NoteModel(
        id: Utils.randomInt(0, 999),
        title: "Phim",
        content: "Merry go round\nHello\nDate mount",
        dateCreate: "28/06/2023 1:11 SA",
        dateEdit: "28/06/2023 1:11 SA",
      ),
      NoteModel(
        id: Utils.randomInt(0, 999),
        title: "Kem",
        content: "Merry go round\nHMerry go round\nHMerry go round\nHMerry go round\nHMerry go round\nHMerry go round",
        dateCreate: "28/06/2023 1:11 SA",
        dateEdit: "28/06/2023 1:11 SA",
      ),
    ].obs;
  }
}
