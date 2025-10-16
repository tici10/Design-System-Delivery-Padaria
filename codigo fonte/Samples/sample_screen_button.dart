import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_button/action_button.dart';
import 'package:design_system/componentes/action_button/view_model_button.dart';
import 'package:design_system/shared/colors.dart';

class SampleScreenButton extends StatelessWidget {
  const SampleScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estilos de botões'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ActionButton.instantiate(viewModel: 
                ButtonViewModel(
                  size: ActionButtonSize.large,
                  style: ActionButtonStyle.primary,
                  text: 'Large',
                  onPressed: () {}
                )
              ),
              Divider(),
              const SizedBox(height: 10,),
                ActionButton.instantiate(viewModel: 
                  ButtonViewModel(
                    size: ActionButtonSize.medium,
                    style: ActionButtonStyle.secondary,
                    text: 'Medium',
                    onPressed: () {}
                  )
                ),
              const SizedBox(height: 10,),
                ActionButton.instantiate(viewModel: 
                  ButtonViewModel(
                    size: ActionButtonSize.small ,
                    style: ActionButtonStyle.tertiary,
                    text: 'small',
                    onPressed: () {}
                  )
                ),
            ]
          )
        ],
      ),
    );
  }
}


  