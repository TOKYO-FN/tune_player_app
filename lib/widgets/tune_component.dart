import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';

class Tune extends StatelessWidget {
  const Tune({
    super.key,
    required this.tuneModel,
  });

  final TuneModel tuneModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: tuneModel.flex,
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(
            AssetSource(tuneModel.sound),
          );
        },
        child: Container(
          color: tuneModel.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
