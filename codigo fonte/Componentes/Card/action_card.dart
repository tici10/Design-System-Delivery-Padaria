import 'package:design_system/shared/borda.dart';
import 'package:design_system/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_card/view_model_card.dart';
import 'package:design_system/shared/styles.dart';
import 'package:design_system/shared/colors.dart';

class ActionCard extends StatelessWidget {
  final CardViewModel viewModel;
  TextStyle styleproduto1;
  TextStyle styleproduto2;
  double size;

  ActionCard._({
    super.key,
    required this.viewModel,
    this.styleproduto1= stylenome,
    this.styleproduto2 = stylepreco,
    this.size = 120,
  });
  

  static ActionCard instantiate({required CardViewModel viewModel, styleproduto1 = stylenome, styleproduto2 = stylepreco, size= 120}){
    return ActionCard._(viewModel: viewModel);
  }

  void setStyleCard(CardStyle style){
    switch (viewModel.style) {
      case CardStyle.unique:
        this.styleproduto1 = stylenome;
        this.styleproduto2 = stylepreco;
        break;
    }
  }

  void setSizeCard(CardSize size){
    switch (viewModel.size) {
      case CardSize.medium:
        this.size = 10.0;
        break;
      case CardSize.large:
        this.size = 20.0;
        break;
    }
  }

  Widget createCard(){
    setSizeCard(viewModel.size);
    return Column(
      children: [ 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xfffffffff),
                border: Border.all(color: const Color.fromARGB(255, 151, 115, 101)),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Cor da sombra
                    spreadRadius: 3, // Expansão da sombra
                    blurRadius: 4, // Raio de desfoque
                    offset: Offset(0, 5), // Deslocamento (x, y)
                  ),
                ]
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height:140.0,
                    width: 139.0,
                    child: viewModel.image,
                  ),
                  SizedBox(
                    child: Text(
                      viewModel.nome,
                      style: stylenome,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    setSizeCard(viewModel.size);
    setStyleCard(viewModel.style);
    return createCard();
  }
  
}
