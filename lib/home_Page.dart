import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:speech_to_text/color.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // SpeechToText speechToText = SpeechToText();
  var txt = "Hold the button and start the speaking";
  var isListig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: bgColor,
        elevation: 0,
        title: const Text(
          "Speech To Text",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: TextColor,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        margin: EdgeInsets.only(
          bottom: 150.0,
        ),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black26,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: isListig,
        duration: const Duration(microseconds: 2000),
        glowColor: bgColor,
        repeat: true,
        child: GestureDetector(
          onTapDown: (details) {
            setState(() {
              isListig = true;
            });
          },
          onTapUp: (details) {
            setState(() {
              isListig = false;
            });
          },
          child: CircleAvatar(
            backgroundColor: bgColor,
            radius: 35,
            child: Icon(
              isListig ? Icons.mic : Icons.mic_none,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
