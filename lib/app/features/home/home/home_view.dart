part of "imports.dart";

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return DropdownButton2<BookEntity>(
      barrierColor: Colors.black.withValues(alpha: .5),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          color: Color(0xffF1F1FA),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      underline: SizedBox.shrink(),
      isExpanded: true,
      value: controller.currentBook?.value,
      onChanged: controller.selectBook,
      style: GoogleFonts.nunito(
        color: Color(0xff2a2b2d),
        fontSize: 18,
      ),
      hint: Text(
        "Category",
        style: GoogleFonts.inter(
          color: Color(0xff91919F),
        ),
      ),
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          // border: Border.all(
          //   color: _Colors.card,
          // ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_downward,
          // color: _Colors.darkBlue,
        ),
      ),
      items: essentialBooks.map<DropdownMenuItem<BookEntity>>(
            (book) {
          return DropdownMenuItem(
            value: book,
            child: Text(
              "Book ${book.number}",
              style: GoogleFonts.nunito(
                color: Color(0xff2a2b2d),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}

class _Themes extends StatelessWidget {
  const _Themes();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: units.length,
      itemBuilder: (_, int index) {
        final unit = units[index];
        return _ThemeItem(unit: unit);
      },
    );
  }
}

class _ThemeItem extends StatelessWidget {
  final UnitEntity unit;

  const _ThemeItem({required this.unit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: CupertinoButton(
        // color: _Colors.card,
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Row(
            children: [
              Text(
                unit.number.toString().padLeft(2, "0"),
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10),
              Text(
                unit.name,
                style: GoogleFonts.workSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

