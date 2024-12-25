import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honken_portfolio/enums.dart';

class BaseController extends GetxController with GetSingleTickerProviderStateMixin {
  late final TabController tabController;
  final RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: ScreenContentType.values.length, vsync: this);
    tabController.addListener(() {
      selectedIndex.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  int get getSelectedIndex => selectedIndex.value;
  set changeIndex(int value) {
    selectedIndex.value = value;
    tabController.animateTo(value);
  }

  List<BottomNavigationBarItem> get availableBottomMenus => ScreenContentType.values
      .map((e) => BottomNavigationBarItem(
            icon: Icon(e.icon, color: const Color(0xFF656C7A)),
            activeIcon: Icon(e.icon, color: Colors.white),
            backgroundColor: const Color(0xFF1E1E1E),
            label: e.name,
          ))
      .toList();
}
