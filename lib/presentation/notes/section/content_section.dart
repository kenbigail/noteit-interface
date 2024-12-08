part of '../pages/page.dart';

class ContentSection extends StatelessWidget {
  final TextEditingController notesController;
  final int notesLineCount;
  final Function(String) onNotesChanged;

  const ContentSection({
    required this.notesController,
    required this.notesLineCount,
    required this.onNotesChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        _sectionTitle('Title'),
        const SizedBox(height: 8),
        _titleInput(),
        const SizedBox(height: 20),
        _sectionTitle('Category'),
        const SizedBox(height: 8),
        _categoryDropdown(),
        const SizedBox(height: 20),
        _sectionTitle('Notes Fill'),
        const SizedBox(height: 8),
        _notesInput(),
        const SizedBox(height: 20),
        _createButton(),
      ],
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _titleInput() {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Notes Title',
          hintStyle: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFD8D8D8),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8D8D8)),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8D8D8)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        style: GoogleFonts.inter(fontSize: 14),
        maxLines: 1,
      ),
    );
  }

  Widget _categoryDropdown() {
    return SizedBox(
      height: 50,
      child: DropdownButtonFormField<String>(
        value: 'Option 1',
        isDense: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8D8D8)),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD8D8D8)),
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        ),
        icon: const Icon(Icons.arrow_drop_down),
        items: const [
          DropdownMenuItem(
            value: 'Option 1',
            child: Text('Uncategorized'),
          ),
          DropdownMenuItem(
            value: 'Option 2',
            child: Text('Works'),
          ),
        ],
        onChanged: (value) {
          // Handle change
        },
      ),
    );
  }

  Widget _notesInput() {
    return TextField(
      controller: notesController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFD8D8D8)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFD8D8D8)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      style: GoogleFonts.inter(fontSize: 14),
      maxLines: null,
      minLines: notesLineCount,
      onChanged: onNotesChanged,
    );
  }

  Widget _createButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Handle button press
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          'Create',
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}