import 'dart:convert';
import 'dart:developer';

import 'package:emoji_pikka/emoji/emoji.dart';
import 'package:emoji_pikka/emoji/src/model/emoji.dart';
import 'package:emoji_pikka/emoji/src/model/open_moji.dart';
import 'package:emoji_pikka/src/emoji_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class EmojiPikka extends StatefulWidget {
  const EmojiPikka({Key? key}) : super(key: key);

  @override
  State<EmojiPikka> createState() => _EmojiPikkaState();
}

class _EmojiPikkaState extends State<EmojiPikka> {
  final GroupedItemScrollController itemScrollController =
      GroupedItemScrollController();

  Future<String> loadAsset() async {
    return await rootBundle
        .loadString('packages/emoji_pikka/assets/emoji.json');
  }

  List<OpenMoji> openMojis = [];

  loadData() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // var loadedAssets = await loadAsset();

      var list = List.from(jsonDecode(objText));
      openMojis = list
          .map(
            (e) => OpenMoji(
              annotation: e['annotation'],
              group: e['group'],
              hexcode: e['hexcode'],
              subgroups: e['subgroups'],
              tags: e['tags'],
            ),
          )
          .toList();
      log(list.toString());
    });

    // final String response =
    //     await rootBundle.loadString('assets/emoji_data.json');
    // final Map<String, dynamic> data = await json.decode(response);

    // var decode = await json.decode(data);
    // var openMoji = OpenMoji.fromJson(decode);
    print('openMoji');
    // print(openMoji);
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    String query = '';
    // final emojiNames =
    //     Emoji.all().where((it) => it.name != null).map((e) => e.name!);

    // final emojis = emojiNames
    //     .where((e) => e.contains(query)) // search query value
    //     .map(Emoji.byName)
    //     .where((e) => e != null);

    // if (emojis.isEmpty) {
    //   return const SizedBox();
    // }

    final emojiGroups = EmojiGroup.values;
    var groupEmojis = Emoji.byGroup(
        emojiGroups.firstWhere((e) => e.name == 'smileysEmotion'));

    return Card(
      margin: const EdgeInsets.all(8),
      // elevation: 2,
      color: const Color(0xfffefcff), // bars color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // clipBehavior: Clip.antiAlias,
      child: Container(
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints.expand(width: 400, height: 400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search emojis...',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                // itemScrollController.jumpTo(index: 999);
              },
              child: Container(
                color: Colors.blue,
                height: 32,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Text('$index');
                  },
                  itemCount: 10,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: StickyGroupedListView<dynamic, String>(
                  // elements: emojis.toList(),
                  elements: emojiGroupList,
                  groupBy: (element) => element,
                  // itemComparator: (e1, e2) => e1.name.compareTo(e2.name),
                  groupSeparatorBuilder: (element) => Text(
                    element,
                    style: const TextStyle(fontSize: 24),
                  ),
                  itemScrollController: itemScrollController,
                  // elementIdentifier: (element) => element.name,
                  itemBuilder: (context, element) {
                    // final emoji = emojis.elementAt(?)!;

                    return Wrap(
                      key: ValueKey(element),
                      children: [
                        for (var e in groupEmojis)
                          Text(
                            '${e.char}',
                            style: const TextStyle(fontSize: 24),
                          )
                      ],
                    );

                    return SizedBox(
                      key: ValueKey(element),
                      child: Text(
                        '${element}',
                        style: const TextStyle(fontSize: 24),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 16),
              child: Row(
                children: const [
                  Text('Recents'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
