import 'package:collection/collection.dart';
import 'package:emoji_pikka/emoji/src/data/emojis.dart';
import 'package:emoji_pikka/emoji/src/emoji.dart';

class Emoji {
  static const variationSelector16 = 65039;
  final String? name;
  final String? char;
  final String? shortName;
  final EmojiGroup? emojiGroup;
  final EmojiSubgroup? emojiSubgroup;
  final bool modifiable;
  final List<String> keywords;
  List<int>? _runes;

  /// Emoji class.
  /// [name] of emoji. [char] and character of emoji. [shortName] and a digest name of emoji, [emojiGroup] is emoji's group and [emojiSubgroup] is emoji's subgroup. [keywords] list of keywords for emoji. [modifiable] `true` if emoji has skin.
  Emoji({
    this.name,
    this.char,
    this.shortName,
    this.emojiGroup,
    this.emojiSubgroup,
    this.keywords = const [],
    this.modifiable = false,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Emoji &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          char == other.char &&
          shortName == other.shortName &&
          emojiGroup == other.emojiGroup &&
          emojiSubgroup == other.emojiSubgroup &&
          const ListEquality().equals(keywords, other.keywords) &&
          modifiable == other.modifiable;

  @override
  int get hashCode => Object.hash(
        name.hashCode,
        char.hashCode,
        shortName.hashCode,
        emojiGroup.hashCode,
        emojiSubgroup.hashCode,
        keywords.hashCode,
        modifiable.hashCode,
      );

  /// Runes of Emoji Character
  List<int> get charRunes {
    return _runes ??= char!.runes.toList();
  }

  /// Get all Emojis
  static List<Emoji> all() => List.unmodifiable(emojis);

  static Iterable<String> chars() =>
      emojis.map((e) => e.char).whereType<String>();

  /// Returns Emoji by [char] and character
  static Emoji? byChar(String char) {
    return emojis.firstWhereOrNull((Emoji emoji) => emoji.char == char);
  }

  /// Returns Emoji by [name]
  static Emoji? byName(String name) {
    name = name.toLowerCase(); // todo: searchable name
    return emojis.firstWhereOrNull((Emoji emoji) => emoji.name == name);
  }

  /// Returns Emoji by [shortName] as short name.
  static Emoji? byShortName(String shortName) {
    return emojis.firstWhereOrNull(
      (Emoji emoji) => emoji.shortName == shortName,
    );
  }

  /// Returns list of Emojis in a same [group]
  static Iterable<Emoji> byGroup(EmojiGroup group) {
    return emojis.where((Emoji emoji) => emoji.emojiGroup == group);
  }

  /// Returns list of Emojis in a same [subgroup]
  static Iterable<Emoji> bySubgroup(EmojiSubgroup subgroup) {
    return emojis.where((Emoji emoji) => emoji.emojiSubgroup == subgroup);
  }

  /// Returns List of Emojis with Specific [keyword]
  static Iterable<Emoji> byKeyword(String keyword) {
    keyword = keyword.toLowerCase();
    return emojis.where((Emoji emoji) => emoji.keywords.contains(keyword));
  }

  @override
  toString() => char!;
}
