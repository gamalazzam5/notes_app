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
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    String? title, subTitle;
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,

      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hint: "content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 32),
          CustomButton(onTap: (){
           if(formKey.currentState!.validate()){
             formKey.currentState!.save();
           }else{
             autoValidateMode = AutovalidateMode.always;
             setState(() {

             });
           }
          },),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
