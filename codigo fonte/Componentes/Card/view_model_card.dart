import 'package:flutter/material.dart';

enum CardStyle{
  unique,
}

enum CardSize{
  medium,
  large,
}

class CardViewModel{
  final CardSize size;
  final CardStyle style;
  final Image image;
  final String nome;
  final String preco;

  CardViewModel({
    required this.size,
    required this.style,
    required this.image,
    required this.nome,
    required this.preco,
  });

}
