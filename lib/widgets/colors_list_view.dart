import 'package:flutter/material.dart';

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
  List<Color> colors =const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xff537D8D),
    Color(0xff482C3D),
    Color(0xffD9E760),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    setState(() {

                    });
                  },
                  child: ColorItem(isSelected: currentIndex == index ,
                  color: colors[index],
                  )),
            );
          }),
    );
  }
}
