import '../../routes/routes_helper.dart';

class CustomChipSelection extends StatelessWidget {
  final List<String> items;
  final double width;
  final double height;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final Function(int)? onSelected;
  final List<String> selectedItems;

  const CustomChipSelection({
    super.key,
    required this.items,
    required this.width,
    required this.height,
    required this.scrollDirection,
    this.physics,
    this.onSelected,
    required this.selectedItems,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        physics: physics,
        scrollDirection: scrollDirection,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: onSelected!(index),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: index <= selectedItems.length &&
                          selectedItems.isNotEmpty
                      ? ((items[index] ==
                              selectedItems[
                                  index <= selectedItems.length ? index : 0])
                          ? const Color(0xFF000000)
                          : const Color(0xFFF4F4F4))
                      : const Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    items[index],
                    style: TextStyle(
                      color: index <= selectedItems.length
                          ? ((items[index] ==
                                  selectedItems[index <= selectedItems.length
                                      ? index
                                      : 0])
                              ? Colors.white
                              : Colors.black)
                          : Colors.black,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
