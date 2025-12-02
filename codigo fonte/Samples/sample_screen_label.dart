import 'package:design_system/componentes/action_label/action_label.dart';
import 'package:design_system/componentes/action_label/view_model_label.dart';
import 'package:flutter/material.dart';

class SampleScreenLabel extends StatelessWidget{
  const SampleScreenLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estilos de campos de texto(label)'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ActionLabel.instantiate(viewModel:
                LabelViewModel(
                  text: 'Nome',
                )
              ),
              Divider(),
              const SizedBox(height: 10),
                ActionLabel.instantiate(viewModel:
                  LabelViewModel(
                    text: 'Senha',
                  )
                ),
            ]
          ),
        ],
      ),
    );
  }
}