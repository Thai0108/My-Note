import 'package:not_a_note/component/ui/c_container.dart';
import 'package:not_a_note/component/ui/c_text_field.dart';
import 'package:not_a_note/screens/home/detail_note/detail_note_view.dart';

import '../../base/lifecycle/b_page.dart';
import 'home_logic.dart';
import 'home_state.dart';

class HomeView extends BPage<HomeLogic, HomeState> {
  HomeView({
    super.key,
  }) {
    setController(HomeLogic(), HomeState());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      appBar: AppBar(
        backgroundColor: kColorBackground,
        title: CTextField(
          background: kColorBackgroundGrey,
          prefix: const Icon(
            Icons.search,
          ),
          hintText: "Tìm kiếm ghi chú",
          hintStyle: TextStyle(color: kColorTextGrey, fontSize: 14),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              color: kColorIcon,
            ),
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
      body: Obx(
        () => GridView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: 15.fs,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.fs,
            crossAxisSpacing: 10.fs,
          ),
          itemCount: state.lstNotes.length,
          itemBuilder: (context, index) {
            final item = state.lstNotes[index];
            return GestureDetector(
              onTap: () {
                BSwitchScreen.pushName(
                  "/DetailNoteView",
                  arguments: [
                    "tag-$index",
                    state.lstNotes[index],
                  ],
                );
              },
              child: Hero(
                tag: "tag-$index",
                child: Material(
                  type: MaterialType.transparency,
                  child: NoteItemWidget(
                    title: item.title ?? "",
                    content: item.content ?? "",
                    date: item.dateEdit ?? item.dateCreate ?? "",
                  ),
                ),
              ),
            );
          },
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
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700,
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
                      decoration: TextDecoration.none,
                      color: Colors.black,
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
              Expanded(
                child: Text(
                  date,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12.fs,
                    color: kColorTextHint,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
