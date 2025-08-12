import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, left: 16, bottom: 24),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:  Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .5),
                    fontSize: 18,
                  ),
                ),
              ),

              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: .4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
