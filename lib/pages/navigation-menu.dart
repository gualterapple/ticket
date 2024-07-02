import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ticket/pages/home-screen.dart';
import 'package:ticket/utils/contants/images.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 1,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          indicatorColor: Colors.transparent,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
                icon: SvgPicture.asset(TImagens.homeDisable),
                selectedIcon: SvgPicture.asset(TImagens.homeEnable),
                label: 'Inicio'),
            NavigationDestination(
                icon: SvgPicture.asset(TImagens.avaliacaoDisable),
                selectedIcon: SvgPicture.asset(TImagens.avaliacaoEnable),
                label: 'Avaliações'),
            NavigationDestination(
                icon: SvgPicture.asset(TImagens.financeiroDisable),
                selectedIcon: SvgPicture.asset(TImagens.financeiroEnable),
                label: 'Financeiro'),
            NavigationDestination(
                icon: SvgPicture.asset(TImagens.declaracoesDisable),
                selectedIcon: SvgPicture.asset(TImagens.declaracoesEnable),
                label: 'Declarações'),
            NavigationDestination(
                icon: SvgPicture.asset(TImagens.perfilDisable),
                selectedIcon: SvgPicture.asset(TImagens.perfilEnable),
                label: 'Perfil'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.grey,
    ),
  ];
}
