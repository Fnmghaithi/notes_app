import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({
    super.key,
    required this.note,
  });
  final Note note;

  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[currentIndex].value;
                  setState(() {});
                },
                child: ColorItem(
                  isSelected: currentIndex == index,
                  color: kColors[index],
                ),
              ),
            )),
      ),
    );
  }
}
