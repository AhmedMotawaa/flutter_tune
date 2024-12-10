// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class toneSelector extends StatefulWidget {
//   toneSelector({super.key});

//   @override
//   State<toneSelector> createState() => _toneSelectorState();
// }

// class _toneSelectorState extends State<toneSelector> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               color: Color.fromARGB(255, 250, 46, 0),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Color.fromARGB(255, 228, 146, 2),
//               height: 100,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Color.fromARGB(255, 206, 239, 0),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Color.fromARGB(255, 6, 175, 60),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Color.fromARGB(255, 3, 141, 150),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Color.fromARGB(255, 3, 159, 250),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Color.fromARGB(255, 144, 49, 192),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class toneSelector extends StatefulWidget {
  toneSelector({super.key});

  @override
  State<toneSelector> createState() => _toneSelectorState();
}

class _toneSelectorState extends State<toneSelector> {
  final AudioPlayer _audioPlayer = AudioPlayer(); // كائن لتشغيل الصوت

  // وظيفة لتشغيل النغمة
  void _playSound(String filePath) {
    _audioPlayer.play(AssetSource(filePath)); // تشغيل الملف من assets
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => _playSound('note1.wav'), // نغمة عند الضغط
              child: Container(
                color: Color.fromARGB(255, 250, 46, 0),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _playSound('note2.wav'),
              child: Container(
                color: Color.fromARGB(255, 228, 146, 2),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _playSound('note3.wav'),
              child: Container(
                color: Color.fromARGB(255, 206, 239, 0),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _playSound('note4.wav'),
              child: Container(
                color: Color.fromARGB(255, 6, 175, 60),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _playSound('note5.wav'),
              child: Container(
                color: Color.fromARGB(255, 3, 141, 150),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _playSound('note6.wav'),
              child: Container(
                color: Color.fromARGB(255, 3, 159, 250),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _playSound('note7.wav'),
              child: Container(
                color: Color.fromARGB(255, 144, 49, 192),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
