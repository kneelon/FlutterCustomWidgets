import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final TextEditingController controller;
  final String label;
  final double borderRadius;
  final TextInputType keyboardType;
  final double paddingVertical;
  final double paddingHorizontal;
  final double contentPadding;
  final IconData? prefixIcon;
  final IconButton? suffixIcon;
  final bool obscureText;
  final bool isAutoFill;
  final String? Function(String?)? validator;
  final String? errorMessage;

  const CustomTextFormField({Key? key,
    required this.controller,
    required this.label,
    this.borderRadius = 9,
    this.keyboardType = TextInputType.text,
    this.paddingVertical = 5,
    this.paddingHorizontal = 8,
    this.contentPadding = 8,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.isAutoFill = false,
    this.validator,
    this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: paddingVertical,
        horizontal: paddingHorizontal,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12),
          //   borderSide: const BorderSide(
          //     color: Colors.black54,
          //   ),
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          fillColor: Colors.white,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentPadding),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon,
          label: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              label,
            ),
          ),

        ),
        obscureText: obscureText,
        autofillHints: isAutoFill ? [AutofillHints.email] : null,
        validator: validator,
      ),

    );
  }
}