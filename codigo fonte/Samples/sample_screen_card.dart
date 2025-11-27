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
              size: CardSize.medium,
              style: CardStyle.unique,
              image: Image.asset('assets/images/Pao-australiano.jpg'),
              nome: 'Pão Caseiro', 
              preco: '15.00', 
            ),
          ),
          Divider(),
          const SizedBox(height: 10,),
          ActionCard.instantiate(viewModel: 
            CardViewModel( 
              size: CardSize.large,
              style: CardStyle.unique,
              image: Image.asset('assets/images/baguete.jpg'),
              nome: 'Pão Caseiro', 
              preco: '20.00', 
            ),
          )
        ],
      ),
    );
  }
}
