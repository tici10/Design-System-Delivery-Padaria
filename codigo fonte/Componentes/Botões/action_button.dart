import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_button/view_model_button.dart';
import 'package:design_system/shared/colors.dart';

class ActionButton extends StatelessWidget {
  final ButtonViewModel viewModel;
  Color backgroundColor;
  int size;

  ActionButton._({
    super.key,
    required this.viewModel,
    this.backgroundColor = primaryBaseColor,
    this.size = 18,
  });

  static ActionButton instantiate({required ButtonViewModel viewModel, backgroundColor = primaryBaseColor}) {
    return ActionButton._(viewModel: viewModel);
  }

  void setStyle(ActionButtonStyle style){
    switch(viewModel.style){
      case ActionButtonStyle.primary:
        backgroundColor = primaryBaseColor;
        break;
      case ActionButtonStyle.secondary:
        backgroundColor= secondaryBaseColor;
        break;
      case ActionButtonStyle.tertiary:
        backgroundColor= tertiaryBaseColor;
        break;
    }
  }

  void setSize(ActionButtonSize size){
    switch(viewModel.size){
      case ActionButtonSize.small:
        this.size = 18;
        break; 
      case ActionButtonSize.medium:
        this.size = 24;
        break;
      case ActionButtonSize.large:
        this.size = 30;
        break;
    }
  }
   
  Widget createElevatedButton() {
    double verticalPadding = 12;
    double horizontalPadding = 32;
    return ElevatedButton(onPressed:viewModel.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding)
      ),
      child: Text(viewModel.text)
      );
  }

  @override
  Widget build(BuildContext context) {
    setStyle(viewModel.style as ActionButtonStyle);
    setSize(viewModel.size);
    return createElevatedButton();
  }
}