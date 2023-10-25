import 'package:flutter/material.dart';

import 'pages/anuncios_page.dart';
import 'pages/dados_page.dart';
import 'pages/favoritos_page.dart';
import 'pages/home_page.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const HomePage(),
    '/anuncios': (context) => const AnunciosPage(),
    '/dados': (context) => const DadosPage(),
    '/favoritos': (context) => const FavoritosPage(),
  };
}
