// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_moji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMoji _$$_OpenMojiFromJson(Map<String, dynamic> json) => _$_OpenMoji(
      annotation: json['annotation'] as String,
      group: $enumDecode(_$GroupEnumMap, json['group']),
      hexcode: json['hexcode'] as String,
      subgroups: json['subgroups'] as String,
      tags: json['tags'] as String,
    );

Map<String, dynamic> _$$_OpenMojiToJson(_$_OpenMoji instance) =>
    <String, dynamic>{
      'annotation': instance.annotation,
      'group': _$GroupEnumMap[instance.group]!,
      'hexcode': instance.hexcode,
      'subgroups': instance.subgroups,
      'tags': instance.tags,
    };

const _$GroupEnumMap = {
  Group.smileysEmotion: 'smileysEmotion',
  Group.peopleBody: 'peopleBody',
  Group.component: 'component',
  Group.animalsNature: 'animalsNature',
  Group.foodDrink: 'foodDrink',
  Group.travelPlaces: 'travelPlaces',
  Group.activities: 'activities',
  Group.objects: 'objects',
  Group.symbols: 'symbols',
  Group.flags: 'flags',
  Group.extrasOpenmoji: 'extrasOpenmoji',
  Group.extrasUnicode: 'extrasUnicode',
};
