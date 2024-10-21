import '../routes/routes_helper.dart';

class CustomDropDown extends StatelessWidget {
  final List<String> items;
  final String? selectedValue;
  final void Function(String?) onChanged;
  final String hintText;
  final double? width;
  final double? height;
  final Color? color;
  final Color? boarderColor;
  final TextStyle? style;
  final double? horizontalPadding;
  const CustomDropDown({super.key, required this.items, this.selectedValue, required this.onChanged, required this.hintText, this.width, this.height, this.color, this.boarderColor, this.style, this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: width ?? 380,
      height: height ?? 45,
      decoration: BoxDecoration(
        color: color ?? const Color(0xFFF4F4F4),
        border: Border.all(color: boarderColor ?? const Color(0xFFF4F4F4)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 16.0),
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          style: style,
          hint:  hintText.isNotEmpty? Text(hintText): Text("${items[0]},${items[1]},${items[2]}...") ,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: onChanged,
          isExpanded: true, // Allows the dropdown to take the full width
        ),
      ),
    );
  }
}
