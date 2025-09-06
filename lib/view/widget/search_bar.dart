
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  final String hintText;
  final Function(String)? onChanged;
  final VoidCallback? onFilterPressed;
  final EdgeInsetsGeometry? margin;

  const SearchBarWidget({
    Key? key,
    this.hintText = "Where are you going?",
    this.onChanged,
    this.onFilterPressed,
    this.margin,
  }) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Search Input Field
          Expanded(
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: _focusNode.hasFocus 
                    ? const Color(0xFF4285F4) 
                    : const Color(0xFFE1E5E9),
                  width: 1,
                ),
                boxShadow: _focusNode.hasFocus 
                  ? [
                      BoxShadow(
                        color: const Color(0xFF4285F4).withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                    ]
                  : null,
              ),
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                onChanged: widget.onChanged,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF333333),
                ),
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF9AA0A6),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF9AA0A6),
                    size: 20,
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                ),
                onSubmitted: (value) {
                  // Handle search submission
                  print('Search submitted: $value');
                },
              ),
            ),
          ),
          
          const SizedBox(width: 12),
          
          // Filter Button
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: const Color(0xFF4285F4),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: widget.onFilterPressed ?? () {
                  print('Filter button pressed');
                },
                child: const Icon(
                  Icons.tune,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

