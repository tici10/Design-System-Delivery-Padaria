import 'package:design_system/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_card/view_model_card.dart';
import 'package:design_system/shared/styles.dart';

class ActionCard extends StatelessWidget {
  final CardViewModel viewModel;
  TextStyle style;

  ActionCard._({
    super.key,
    required this.viewModel,
    this.style= nomeproduto,
  });

  static Widget instantiate({required CardViewModel viewModel, style = nomeproduto}){
    return ActionCard._(viewModel: viewModel);
  }

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                viewModel.imageUrl,
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10.0),
              Text(
                viewModel.nome, 
                style: nomeproduto,
              ),
            const SizedBox(height: 4.0,),
              Text(
                viewModel.preco as String,
                style:precoproduto
              ),
            const SizedBox(height: 4.0,)
          ],
        ),
      )
    );
  }
  
}