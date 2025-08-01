import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
          color: Colors.white.withValues(alpha: .05)),
      child: Center(child:IconButton( icon: Icon( icon,size: 28,), onPressed: () {  },),),
    );
  }
}
