import 'package:flutter/material.dart';

void main() => runApp(const AnimatedTextStyleApp());

class AnimatedTextStyleApp extends StatelessWidget {
  const AnimatedTextStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedTextStyleScreen(),
    );
  }
}

class AnimatedTextStyleScreen extends StatefulWidget {
  const AnimatedTextStyleScreen({super.key});

  @override
  _AnimatedTextStyleScreenState createState() => _AnimatedTextStyleScreenState();
}

class _AnimatedTextStyleScreenState extends State<AnimatedTextStyleScreen> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Practice Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isToggled = !_isToggled;
            });
          },
          child: AnimatedDefaultTextStyle(
            duration: const Duration(seconds: 1),
            style: _isToggled
                ? const TextStyle(
                    fontSize: 50,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  )
                : const TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                  ),
            child: const Text('Flutter Animation!'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isToggled = !_isToggled;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
