import 'package:flutter/material.dart';
import 'package:notes_app/helper/constans.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hint: "Title"),
            SizedBox(height: 16),
            CustomTextField(hint: "content", maxLines: 5),
            SizedBox(height: 32,),
            CustomButton(),
            SizedBox(height: 16,)

          ],
        ),
      ),
    );
  }
}

