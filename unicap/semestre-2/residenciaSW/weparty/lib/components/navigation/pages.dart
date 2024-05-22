import 'package:flutter/material.dart';
import 'package:weparty/components/home_page/home.dart';
import 'package:weparty/components/pesquisar/pesquisar.dart';

List<Widget> getPages(ThemeData theme) {
  return <Widget>[HomeScreen(), Buscar(), Placeholder(), Placeholder()];
}
