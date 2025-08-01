import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       floatingActionButton: FloatingActionButton(onPressed: (){
         showModalBottomSheet(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadiusGeometry.only(topRight: Radius.circular(16),topLeft: Radius.circular(16))
             ),
             context: context, builder:(context){
           return const AddNoteBottomSheet();
         });
       },child: Icon(Icons.add),),
      body:const NotesViewBody(),
    );
  }
}


