import 'package:design_system/componentes/action_card/action_card.dart';
import 'package:design_system/sample/sample_screen_load.dart';
import 'package:design_system/sample/sample_screen_button.dart';
import 'package:design_system/sample/sample_screen_card.dart';
import 'package:design_system/sample/sample_screen_label.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const ButtonScreen(),
    );
    
  }
}

class ButtonScreen extends StatelessWidget{
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('telas de design'),
        iconTheme: const IconThemeData(color: Colors.brown)
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height*0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton(context, 'Action Button', SampleScreenButton()),
              _buildButton(context, 'Action Card', SampleScreenCard()),
              _buildButton(context, 'Action Label', SampleScreenLabel()),
              _buildButton(context, 'Action Load', SampleScreenLoad()),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildButton(BuildContext context, String text, Widget scene){
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => scene),
        );
      }, 
      child: Text(text),
    );
  }

}
