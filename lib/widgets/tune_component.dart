import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';

class Tune extends StatefulWidget {
  const Tune({
    super.key,
    required this.tuneModel,
  });

  final TuneModel tuneModel;

  @override
  _TuneState createState() => _TuneState();
}

class _TuneState extends State<Tune> {
  late AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _preloadSounds();
  }

  void _preloadSounds() {
    _player.setSource(AssetSource(widget.tuneModel.sound));
  }

  void _playSound(String sound) async {
    if (_player.state == PlayerState.playing) {
      await _player.stop();
    }

    await _player.play(AssetSource(sound));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.tuneModel.flex,
      child: GestureDetector(
        onTap: () {
          _playSound(widget.tuneModel.sound);
        },
        child: Container(
          color: widget.tuneModel.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
