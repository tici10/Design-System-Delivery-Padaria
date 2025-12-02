import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_load/action_load.dart';
import 'package:design_system/componentes/action_load/load_view_model.dart';

class SampleScreenLoad extends StatelessWidget{
  const SampleScreenLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ActionLoad.instantiate(viewModel:
                LoadViewModel(
                  image: Image.asset('assets/images/Logo.png'), 
                  text: 'Aguarde....',
                )
              ),
            ]
          )
        ],
      ),
    );
  }
}