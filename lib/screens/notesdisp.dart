import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/widgets/notecard.dart';
import 'package:notesapp/classes/note.dart';

class DisplayNotes extends StatefulWidget {
  const DisplayNotes({Key? key, required this.notes}) : super(key: key);
  final List<Note> notes;
  @override
  _DisplayNotesState createState() => _DisplayNotesState();
}

class _DisplayNotesState extends State<DisplayNotes> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  this.isSearching = !this.isSearching;
                });
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.search,
                color: normalTextColor,
              )),
        ],
        title: isSearching
            ? TextField(
                onSubmitted: (e) {
                  print(e);
                },
                autofocus: true,
                style: TextStyle(color: normalTextColor),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: normalTextColor),
                  border: InputBorder.none,
                ))
            : Text('Notes',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: headerTextSize,
                  fontFamily: 'Roboto',
                  color: headerTextColor,
                )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Public',
                  style: TextStyle(
                    fontSize: headerTextSizeSmall,
                    fontWeight: FontWeight.w900,
                    color: categoryHeaderColor,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Private',
                  style: TextStyle(
                    fontSize: headerTextSizeSmall,
                    fontWeight: FontWeight.w900,
                    color: normalTextColor,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: StaggeredGridView.countBuilder(
                staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                crossAxisCount: 2,
                itemCount: widget.notes.length,
                itemBuilder: (context, index) =>
                    NoteCard(note: widget.notes[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
