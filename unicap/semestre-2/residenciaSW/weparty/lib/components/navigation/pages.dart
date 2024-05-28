import 'package:flutter/material.dart';
import 'package:weparty/components/carrinho/cart.dart';
import 'package:weparty/components/home_page/home.dart';
import 'package:weparty/components/pesquisar/pesquisar.dart';
import 'package:weparty/components/profile/profile.dart';

List<Widget> getPages(ThemeData theme) {
  return <Widget>[HomeScreen(), Buscar(), Carrinho(), Perfil()];
}
