import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'home view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            context: context,
            builder: (context) {
              return CustomBottomSheet();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(text: 'Notes', icon: Icon(Icons.search)),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: CustomNoteItem(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
