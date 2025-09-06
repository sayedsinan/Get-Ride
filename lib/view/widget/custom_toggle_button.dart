import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  final List<String> options;
  final List<Widget> pages; // 👈 New: pages for each option
  final int initialIndex;
  final Color selectedColor;
  final Color unselectedColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;
  final Color backgroundColor;
  final double height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CustomToggleButton({
    super.key,
    required this.options,
    required this.pages, // 👈 required now
    this.initialIndex = 0,
    this.selectedColor = const Color(0xFF4285F4),
    this.unselectedColor = Colors.transparent,
    this.selectedTextColor = Colors.white,
    this.unselectedTextColor = const Color(0xFF666666),
    this.backgroundColor = const Color(0xFFF5F5F5),
    this.height = 48,
    this.margin,
    this.padding,
  }) : assert(options.length == pages.length,
            "Options and Pages must be the same length");

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton>
    with SingleTickerProviderStateMixin {
  late int selectedIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
    _pageController = PageController(initialPage: selectedIndex);
  }

  void _onToggle(int index) {
    if (index != selectedIndex) {
      setState(() {
        selectedIndex = index;
      });
      _pageController.jumpToPage(index);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Toggle buttons
        Container(
          margin: widget.margin ?? EdgeInsets.zero,
          padding: widget.padding ?? const EdgeInsets.all(4),
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: widget.options.asMap().entries.map((entry) {
              int index = entry.key;
              String option = entry.value;
              bool isSelected = selectedIndex == index;

              return Expanded(
                child: GestureDetector(
                  onTap: () => _onToggle(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? widget.selectedColor
                          : widget.unselectedColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: isSelected
                              ? widget.selectedTextColor
                              : widget.unselectedTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),

        // Pages
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => selectedIndex = index);
            },
            children: widget.pages,
          ),
        ),
      ],
    );
  }
}
