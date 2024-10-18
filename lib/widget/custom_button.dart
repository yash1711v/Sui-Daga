import '../routes/routes_helper.dart';
import '../style/Pallet.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;

  const CustomButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Pallet.primary),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Pallet.primary))),
      ),
        onPressed: () {
      onPressed();
    }, child: child);
  }
}
