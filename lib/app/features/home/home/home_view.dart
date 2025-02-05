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
          color: context.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      underline: SizedBox.shrink(),
      isExpanded: true,
      value: controller.currentBook?.value,
      onChanged: controller.selectBook,
      style: GoogleFonts.nunito(
        color: context.textPrimary,
        fontSize: 18,
      ),
      hint: Text(
        "Book",
        style: context.title,
      ),
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_downward,
          color: context.textPrimary,
        ),
      ),
      items: essentialBooks.map<DropdownMenuItem<BookEntity>>(
        (book) {
          return DropdownMenuItem(
            value: book,
            child: Text(
              "Book ${book.number}",
              style: context.body,
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
        color: context.cardColor,
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
                style: context.subtitle,
              ),
              SizedBox(width: 10),
              Text(
                unit.name,
                style: context.subtitle,
                maxLines: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
