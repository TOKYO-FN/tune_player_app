import 'package:flutter/material.dart';

import '../models/tune_model.dart';
import '../widgets/tune_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<TuneModel> tuneModels = const <TuneModel>[
    TuneModel(color: Color(0xfff5d7b0), sound: 'note1.wav', flex: 6),
    TuneModel(color: Color(0xffd15b56), sound: 'note2.wav', flex: 6),
    TuneModel(color: Color(0xffc43138), sound: 'note3.wav', flex: 6),
    TuneModel(color: Color(0xff7ba8a3), sound: 'note4.wav', flex: 6),
    TuneModel(color: Color(0xff3e909d), sound: 'note5.wav', flex: 6),
    TuneModel(color: Color(0xff007896), sound: 'note6.wav', flex: 6),
    TuneModel(color: Color(0xff004e61), sound: 'note7.wav', flex: 7)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: tuneModels.map((e) => Tune(tuneModel: e)).toList(),
      ),
    );
  }

  // List<Tune> buildTunes(List<TuneModel> tuneModels) {
  //   List<Tune> tunes = <Tune>[];
  //   for (int i = 0; i < tuneModels.length; i++) {
  //     tunes.add(Tune(tuneModel: tuneModels[i]));
  //   }
  //   return tunes;
  // }
}
