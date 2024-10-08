import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/deck_module/deck_module.dart';
import 'package:tcg_league/modules/history_module/history_module.dart';
import 'package:tcg_league/modules/index_module/index_module.dart';
import 'package:tcg_league/modules/join_module/join_module.dart';
import 'package:tcg_league/modules/login_module/login_module.dart';
import 'package:tcg_league/modules/profile_module/profile_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module(
      '/',
      module: LoginModule(),
      transition: TransitionType.rightToLeft,
    );
    r.module(
      '/index/',
      module: IndexModule(),
      transition: TransitionType.rightToLeft,
    );
    r.module(
      '/deck/',
      module: DeckModule(),
      transition: TransitionType.rightToLeft,
    );
    r.module(
      '/join/',
      module: JoinModule(),
      transition: TransitionType.rightToLeft,
    );
    r.module(
      '/history/',
      module: HistoryModule(),
      transition: TransitionType.rightToLeft,
    );
    r.module(
      '/profile/',
      module: ProfileModule(),
      transition: TransitionType.rightToLeft,
    );
  }
}
