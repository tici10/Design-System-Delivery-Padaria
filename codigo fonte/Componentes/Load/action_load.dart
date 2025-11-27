import 'package:flutter/material.dart';
import 'package:design_system/componentes/action_load/load_view_model.dart';

class ActionLoad extends StatelessWidget{
  final LoadViewModel viewModel;

  ActionLoad._({
    super.key,
    required this.viewModel,
  });

  static ActionLoad instantiate({required LoadViewModel viewModel}){
    return ActionLoad._(viewModel: viewModel);
  }

  Widget createdLoad(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.all(20.0)), 
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 600,
              width: 650,
              child: viewModel.image,
            ),
            SizedBox(
              child: Text(
                viewModel.text
              ),
            ),
          ],
      ),
      ] 
    );
  }

  @override
  Widget build(BuildContext context) {
    return createdLoad();
  }
}