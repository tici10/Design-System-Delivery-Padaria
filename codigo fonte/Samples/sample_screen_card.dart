import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_card/action_card.dart';
import 'package:design_system/componentes/action_card/view_model_card.dart';
import 'package:design_system/shared/styles.dart';

class SampleScreenCard extends StatelessWidget{
  const SampleScreenCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design de Cards'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActionCard.instantiate(viewModel: 
            CardViewModel(
              imageUrl: 'https://loja.mueller.ind.br/media/wysiwyg/pao-caseiro-facil1.jpg', 
              nome: 'Pão Caseiro', 
              preco: '15.00', 
            ),
          )
        ],
      ),
    );
  }
}