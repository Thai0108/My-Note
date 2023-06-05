// import 'package:not_a_note/base/lifecycle/b_page.dart';
import 'package:not_a_note/base/lifecycle/b_page.dart';
import 'package:not_a_note/component/ui/c_container.dart';

import 'detail_note_logic.dart';
import 'detail_note_state.dart';

class DetailNoteView extends BPage<DetailNoteLogic, DetailNoteState> {
  DetailNoteView({
    super.key,
  }) {
    setController(DetailNoteLogic(), DetailNoteState());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        backgroundColor: kColorBackground,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/shirt.svg"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35.fs,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Helloo",
            ),
          ],
        ),
      ),
    );
  }
}

class NoteItemWidget extends StatelessWidget {
  final String title;
  final String content;
  final String date;

  const NoteItemWidget({
    super.key,
    required this.title,
    required this.content,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return CContainer(
      padding: EdgeInsets.all(15.fs),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 16.fs,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.fs,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    content,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 14.fs,
                      height: 2,
                    ),
                    maxLines: 4,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                date,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12.fs,
                  color: kColorTextHint,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
