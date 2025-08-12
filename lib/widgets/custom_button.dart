import 'package:flutter/material.dart';

import '../helper/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap,  this.isLoading= false});
final VoidCallback onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(child: isLoading? SizedBox(
            height: 24,width: 24,
            child: const CircularProgressIndicator(color: Colors.black,)) : const Text("Add",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}
