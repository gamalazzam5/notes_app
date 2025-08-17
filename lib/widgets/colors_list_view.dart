import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../helper/constans.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
final bool isSelected;
final Color color ;
  @override
  Widget build(BuildContext context) {
    return isSelected? CircleAvatar(
      radius: 35,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 32,
      ),
    ) : CircleAvatar(
      backgroundColor: color,
      radius: 35,
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                    setState(() {

                    });
                  },
                  child: ColorItem(isSelected: currentIndex == index ,
                  color: kColors[index],
                  )),
            );
          }),
    );
  }
}
