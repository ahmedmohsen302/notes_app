import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffFFCC80),
      ),
      child: Column(
        children: [
          ListTile(
            title: SizedBox(
              height: 40,
              child: Text(
                'Title',
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ),
            subtitle: Opacity(
              opacity: 0.5,
              child: Text(
                'Sub title',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 36.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    'April,15,2025',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
