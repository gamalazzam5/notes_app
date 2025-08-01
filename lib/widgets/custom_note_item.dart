import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,left: 16,bottom: 24,),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Note Name",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Desc hello guy's welcome here",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: .5),
                  fontSize: 18 ,
                ),
              ),
            ),

            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("Aug 1 2025", style: TextStyle(fontSize: 16,color: Colors.black.withValues(alpha: .4))),
          ),
        ],
      ),
    );
  }
}
