import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String? value;
  final List<String> items;
  final String hintText;
  final Function(String?)? onChanged;
  final EdgeInsetsGeometry? margin;
  final double? width;

  const CustomDropdown({
    super.key,
    this.value,
    required this.items,
    required this.hintText,
    this.onChanged,
    this.margin,
    this.width,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? EdgeInsets.zero,
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFE0E0E0),
          width: 1,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.value,
          hint: Text(
            widget.hintText,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF333333),
              fontWeight: FontWeight.normal,
            ),
          ),
          isExpanded: true,
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xFF666666),
            size: 24,
          ),
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF333333),
                ),
              ),
            );
          }).toList(),
          onChanged: widget.onChanged,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          dropdownColor: Colors.white,
          borderRadius: BorderRadius.circular(8),
          elevation: 8,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF333333),
          ),
        ),
      ),
    );
  }
}
