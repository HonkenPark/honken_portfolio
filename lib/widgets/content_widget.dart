import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/controllers/setting_controller.dart';
import 'package:honken_portfolio/widgets/home_widget.dart';
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
    final List<Widget> widgetOptions = <Widget>[
      const HomeWidget(),
      Text('$_selectedIndex'),
      Text('$_selectedIndex'),
      Text('$_selectedIndex'),
    ];
    Get.put(SettingController());

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color(0xFF2F4164),
      ),
      child: Column(
        children: [
          Settings(
            isSetting: Get.find<SettingController>().isSetting.value,
          ),
          widgetOptions.elementAt(_selectedIndex),
        ],
      ),
    );
  }
}
