import 'package:emoji_pikka/emoji_pikka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Picker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EmojiPickerDemo(title: 'Emoji Picker Demo'),
    );
  }
}

class EmojiPickerDemo extends StatefulWidget {
  const EmojiPickerDemo({super.key, required this.title});

  final String title;

  @override
  State<EmojiPickerDemo> createState() => _EmojiPickerDemoState();
}

class _EmojiPickerDemoState extends State<EmojiPickerDemo> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Column(
            children: [
              const Text('Hello world'),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('$index'),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 20),
              ),
              PortalTarget(
                anchor: const Aligned(
                  follower: Alignment.bottomCenter,
                  target: Alignment.topCenter,
                ),
                visible: true,
                portalFollower: const EmojiPikka(),
                child: Center(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Text form field'),
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
