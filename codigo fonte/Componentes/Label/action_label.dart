import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_label/view_model_label.dart';
import 'package:design_system/shared/colors.dart';

class ActionLabel extends StatelessWidget{
  final LabelViewModel viewModel;
  Color style;

  ActionLabel._({
    super.key,
    required this.viewModel,
    this.style= primaryBaseColor,
  });

  static ActionLabel instantiate({required LabelViewModel viewModel, Color style = primaryBaseColor}){
    return ActionLabel._(viewModel: viewModel);
  }

  Widget createLabel(){
    return Column(
      children: [
        Container(
          height: 100,
          width: 300,
          child: TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black, fontSize:  20),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              label: Text(viewModel.text),
              labelStyle: TextStyle(color: Colors.brown),
            ),
          )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return createLabel();
  }
}