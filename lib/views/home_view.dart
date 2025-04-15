import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'home view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
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
