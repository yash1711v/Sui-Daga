import 'package:flutter/services.dart';
import 'package:sui_daga/style/Pallet.dart';

import '../routes/routes_helper.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? prefix;
  final Widget? suffix;
  final bool? readOnly;
  final bool? enabled;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final int? maxWords;
  final int? minWords;
  final bool? expands;
  final MaxLengthEnforcement? maxLengthEnforced;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabledInteractiveSelection;
  final TextStyle? style;
  final void Function()? onTap;

  const CustomTextField({super.key, this.hintText, required this.controller, this.keyboardType, this.obscureText, this.readOnly, this.enabled, this.maxLines, this.minLines, this.maxLength, this.maxWords, this.minWords, this.expands, this.maxLengthEnforced, this.onChanged, this.onEditingComplete, this.onFieldSubmitted, this.onSaved, this.validator, this.inputFormatters, this.enabledInteractiveSelection, this.prefix, this.suffix, this.onTap, this.style});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: style,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      readOnly: readOnly ?? false,
      enabled: enabled ?? true,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      expands: expands ?? false,
      maxLengthEnforcement: maxLengthEnforced,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        fillColor: Colors.transparent,
        prefixIcon: prefix,
        suffixIcon: suffix,
        suffixIconConstraints: const BoxConstraints(
          minHeight: 24,
          minWidth: 24,
        ),
        hintText: hintText,
        counterText: "",
        hintStyle: const TextStyle(color: Pallet.grey),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}

class NumericTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Only allow digits
    final regex = RegExp(r'^[0-9]*$');
    if (regex.hasMatch(newValue.text)) {
      return newValue; // Return the new value if it's valid
    }
    return oldValue; // Return the old value if it's invalid
  }
}