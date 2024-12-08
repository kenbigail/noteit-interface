import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part '../section/content_section.dart';

class AddNotesPage extends StatefulWidget {
  const AddNotesPage({super.key});

  @override
  State<AddNotesPage> createState() => _AddNotesPageState();
}

class _AddNotesPageState extends State<AddNotesPage> {
  final TextEditingController notesController = TextEditingController();
  int notesLineCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Add Notes',
          style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ContentSection(
          notesController: notesController,
          notesLineCount: notesLineCount,
          onNotesChanged: (text) {
            setState(() {
              notesLineCount = '\n'.allMatches(text).length + 1;
            });
          },
        ),
      ),
    );
  }
}


