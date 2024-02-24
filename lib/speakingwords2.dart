import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:avatar_glow/avatar_glow.dart';


class wordstospeak1 extends StatefulWidget {
  final String data;

  const wordstospeak1({super.key, required this.data});



  @override
  _speechscreenState createState() => _speechscreenState();
}

class _speechscreenState extends State<wordstospeak1> {
  SpeechToText speechToText = SpeechToText();

  bool _isListening = false;
  var text = 'Press the button to Start Speaking';
  //var _expectedtext = widget.data;

  void _checkMatch() {
    if (text.toLowerCase() == widget.data.toLowerCase()) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Matched!'),
          content: const Text('Recognized text is correct.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Not Matched!'),
          content: const Text('Recognized text is incorrect.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Speech Game'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: const Text('Go back!'),
            // ),
            // alignment: Alignment.center,
            // padding: const EdgeInsets.all(24),
            // margin: const EdgeInsets.only(bottom: 250),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: _isListening ? Colors.black87 : Colors.black54,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        glowColor: Theme.of(context).primaryColor,
        repeat: true,
        child: GestureDetector(
          onTapDown: (details) {
            setState(
                  () async {
                if (!_isListening) {
                  var available = await speechToText.initialize();
                  if (available) {
                    setState(() {
                      _isListening = true;
                      speechToText.listen(
                        onResult: (result) {
                          setState(() {
                            text = result.recognizedWords;
                          });
                        },
                      );
                    });
                  }
                }
              },
            );
          },
          onTapUp: (details) {
            setState(() {
              _isListening = false;
            });
            speechToText.stop();
            _checkMatch();
          },
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 30,
            child: Icon(_isListening ? Icons.mic : Icons.mic_none,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class wordsdictionary2 extends StatefulWidget {
  const wordsdictionary2({super.key});

  @override
  State<wordsdictionary2> createState() => _wordstodspeakState();
}

class _wordstodspeakState extends State<wordsdictionary2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Speech Game'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "orange")));
                  },
                  child: const Text('Orange'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "Yellow")));
                  },
                  child: const Text('Yellow'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: 'Black',)));
                  },
                  child: const Text('Black'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "Blue")));
                  },
                  child: const Text('Blue'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "Green")));
                  },
                  child: const Text('Green'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "Purple")));
                  },
                  child: const Text('Purple'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "brown")));
                  },
                  child: const Text('Brown'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "Grey")));
                  },
                  child: const Text('Grey'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wordstospeak1(data: "Red")));
                  },
                  child: const Text('Red'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
