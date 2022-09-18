import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_moji.freezed.dart';
part 'open_moji.g.dart';

@freezed
class OpenMoji with _$OpenMoji {
  const factory OpenMoji({
    required String annotation,
    required Group group,
    required String hexcode,
    required String subgroups,
    required String tags,
  }) = _OpenMoji;

  factory OpenMoji.fromJson(Map<String, dynamic> json) =>
      _$OpenMojiFromJson(json);
}

enum Group {
  smileysEmotion,
  peopleBody,
  component,
  animalsNature,
  foodDrink,
  travelPlaces,
  activities,
  objects,
  symbols,
  flags,
  extrasOpenmoji,
  extrasUnicode
}

final groupValues = EnumValues({
  "activities": Group.activities,
  "animals-nature": Group.animalsNature,
  "component": Group.component,
  "extras-openmoji": Group.extrasOpenmoji,
  "extras-unicode": Group.extrasUnicode,
  "flags": Group.flags,
  "food-drink": Group.foodDrink,
  "objects": Group.objects,
  "people-body": Group.peopleBody,
  "smileys-emotion": Group.smileysEmotion,
  "symbols": Group.symbols,
  "travel-places": Group.travelPlaces
});

class EnumValues<T> {
  Map<String, T> map;

  EnumValues(this.map);
}
