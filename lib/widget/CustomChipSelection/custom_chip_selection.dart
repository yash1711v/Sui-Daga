import 'package:flutter/material.dart';

class CustomChipSelection extends StatelessWidget {
  final List<String> items;
  final double width;
  final double height;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final Function(int)? onSelected;
  final List<String> selectedItems;
  final double radius;

  const CustomChipSelection({
    super.key,
    required this.items,
    required this.width,
    required this.height,
    required this.scrollDirection,
    this.physics,
    this.onSelected,
    required this.selectedItems, required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      physics: physics,
      scrollDirection: scrollDirection,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final isSelected = selectedItems.isNotEmpty && items[index] == selectedItems.first;

        return Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 :10.0),
          child: GestureDetector(
            onTap: () => onSelected!(index),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF000000) : const Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
