import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/core/atoms/global_atoms.dart';

class CustomBottomMenu extends StatefulWidget {
  const CustomBottomMenu({super.key});

  @override
  State<CustomBottomMenu> createState() => _CustomBottomMenuState();
}

class _CustomBottomMenuState extends State<CustomBottomMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: navBarIndex.value,
      elevation: 10,
      selectedItemColor: Colors.white,
      unselectedItemColor: Theme.of(context).primaryColorLight,
      showUnselectedLabels: true,
      onTap: (i) {
        if (i != navBarIndex.value) {
          navBarIndex.setValue(i);
          if (i == 0) {
            Modular.to.pushNamedAndRemoveUntil('/index/', (route) => false);
          }
          if (i == 1) {
            Modular.to.pushNamedAndRemoveUntil('/deck/', (route) => false);
          }
          if (i == 2) {
            Modular.to.pushNamedAndRemoveUntil('/join/', (route) => false);
          }
          if (i == 3) {
            Modular.to.pushNamedAndRemoveUntil('/history/', (route) => false);
          }
          if (i == 4) {
            Modular.to.pushNamedAndRemoveUntil('/profile/', (route) => false);
          }
        }
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.emoji_events),
          label: 'Torneios',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.card_travel),
          label: 'Decks',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.add),
          label: 'Entrar',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.history),
          label: 'Histórico',
        ),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
    );
  }
}
