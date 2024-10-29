import 'package:flutter/material.dart';

class CustomChipSelection extends StatelessWidget {
  final List<String> items;
  final double width;
  final double height;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final Function(List<String>)? onSelected; // Change to accept a list for multiple selection
  final List<String> selectedItems;
  final double radius;
  final bool? isMultipleSelection; // New optional parameter

  const CustomChipSelection({
    super.key,
    required this.items,
    required this.width,
    required this.height,
    required this.scrollDirection,
    this.physics,
    this.onSelected,
    required this.selectedItems,
    required this.radius,
    this.isMultipleSelection, // Initialize the new parameter
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      physics: physics,
      scrollDirection: scrollDirection,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final isSelected = selectedItems.contains(items[index]); // Check if the item is selected

        return Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 : 10.0),
          child: GestureDetector(
            onTap: () {
              if (isMultipleSelection == true) {
                // For multiple selection
                final newSelectedItems = List<String>.from(selectedItems);
                if (newSelectedItems.contains(items[index])) {
                  newSelectedItems.remove(items[index]); // Deselect if already selected
                } else {
                  newSelectedItems.add(items[index]); // Select if not selected
                }
                onSelected?.call(newSelectedItems); // Pass the updated list
              } else {
                // For single selection
                onSelected?.call([items[index]]); // Pass the selected item as a single-item list
              }
            },
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
                    overflow: TextOverflow.ellipsis,
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
