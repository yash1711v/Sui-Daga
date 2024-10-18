import '../routes/routes_helper.dart';

class CustomDropDown extends StatelessWidget {
  final List<String> items;
  final String? selectedValue;
  final void Function(String?) onChanged;
  const CustomDropDown({super.key, required this.items, this.selectedValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 380,
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        border: Border.all(color: Color(0xFFF4F4F4)),
      ),
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        hint:  Text("${items[0]},${items[1]},${items[2]},${items[3]}..."),
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
      ),
    );
  }
}
