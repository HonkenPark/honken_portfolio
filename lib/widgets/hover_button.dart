import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ValueChanged<bool> onHover;
  const HoverButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.onHover,
  });

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        widget.onHover(true);
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        widget.onHover(false);
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: widget.child,
      ),
    );
  }
}
