import 'package:flutter/material.dart';
import 'package:weparty/components/carro/carrinho/cart.dart';
import 'package:weparty/components/inicio/home_page/home.dart';
import 'package:weparty/components/pesquisar/pesquisar.dart';
import 'package:weparty/components/conta/profile/profile.dart';

List<Widget> getPages(ThemeData theme) {
  return <Widget>[const HomeScreen(), const Buscar(), const Carrinho(), const Perfil()];
}
