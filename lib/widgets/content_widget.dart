import 'package:flutter/material.dart';
import 'package:honken_portfolio/widgets/settings_widget.dart';

class Content extends StatefulWidget {
  final int index;
  const Content({
    super.key,
    required this.index,
  });

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  late int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    _selectedIndex = widget.index;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color(0xFF2F4164),
      ),
      child: Column(
        children: [
          const Settings(
            isSetting: false,
          ),
          Text(
            '$_selectedIndex',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
