// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_moji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenMoji _$OpenMojiFromJson(Map<String, dynamic> json) {
  return _OpenMoji.fromJson(json);
}

/// @nodoc
mixin _$OpenMoji {
  String get annotation => throw _privateConstructorUsedError;
  Group get group => throw _privateConstructorUsedError;
  String get hexcode => throw _privateConstructorUsedError;
  String get subgroups => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMojiCopyWith<OpenMoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMojiCopyWith<$Res> {
  factory $OpenMojiCopyWith(OpenMoji value, $Res Function(OpenMoji) then) =
      _$OpenMojiCopyWithImpl<$Res>;
  $Res call(
      {String annotation,
      Group group,
      String hexcode,
      String subgroups,
      String tags});
}

/// @nodoc
class _$OpenMojiCopyWithImpl<$Res> implements $OpenMojiCopyWith<$Res> {
  _$OpenMojiCopyWithImpl(this._value, this._then);

  final OpenMoji _value;
  // ignore: unused_field
  final $Res Function(OpenMoji) _then;

  @override
  $Res call({
    Object? annotation = freezed,
    Object? group = freezed,
    Object? hexcode = freezed,
    Object? subgroups = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      annotation: annotation == freezed
          ? _value.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      hexcode: hexcode == freezed
          ? _value.hexcode
          : hexcode // ignore: cast_nullable_to_non_nullable
              as String,
      subgroups: subgroups == freezed
          ? _value.subgroups
          : subgroups // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OpenMojiCopyWith<$Res> implements $OpenMojiCopyWith<$Res> {
  factory _$$_OpenMojiCopyWith(
          _$_OpenMoji value, $Res Function(_$_OpenMoji) then) =
      __$$_OpenMojiCopyWithImpl<$Res>;
  @override
  $Res call(
      {String annotation,
      Group group,
      String hexcode,
      String subgroups,
      String tags});
}

/// @nodoc
class __$$_OpenMojiCopyWithImpl<$Res> extends _$OpenMojiCopyWithImpl<$Res>
    implements _$$_OpenMojiCopyWith<$Res> {
  __$$_OpenMojiCopyWithImpl(
      _$_OpenMoji _value, $Res Function(_$_OpenMoji) _then)
      : super(_value, (v) => _then(v as _$_OpenMoji));

  @override
  _$_OpenMoji get _value => super._value as _$_OpenMoji;

  @override
  $Res call({
    Object? annotation = freezed,
    Object? group = freezed,
    Object? hexcode = freezed,
    Object? subgroups = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_OpenMoji(
      annotation: annotation == freezed
          ? _value.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      hexcode: hexcode == freezed
          ? _value.hexcode
          : hexcode // ignore: cast_nullable_to_non_nullable
              as String,
      subgroups: subgroups == freezed
          ? _value.subgroups
          : subgroups // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMoji implements _OpenMoji {
  const _$_OpenMoji(
      {required this.annotation,
      required this.group,
      required this.hexcode,
      required this.subgroups,
      required this.tags});

  factory _$_OpenMoji.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMojiFromJson(json);

  @override
  final String annotation;
  @override
  final Group group;
  @override
  final String hexcode;
  @override
  final String subgroups;
  @override
  final String tags;

  @override
  String toString() {
    return 'OpenMoji(annotation: $annotation, group: $group, hexcode: $hexcode, subgroups: $subgroups, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMoji &&
            const DeepCollectionEquality()
                .equals(other.annotation, annotation) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(other.hexcode, hexcode) &&
            const DeepCollectionEquality().equals(other.subgroups, subgroups) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(annotation),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(hexcode),
      const DeepCollectionEquality().hash(subgroups),
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  _$$_OpenMojiCopyWith<_$_OpenMoji> get copyWith =>
      __$$_OpenMojiCopyWithImpl<_$_OpenMoji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMojiToJson(
      this,
    );
  }
}

abstract class _OpenMoji implements OpenMoji {
  const factory _OpenMoji(
      {required final String annotation,
      required final Group group,
      required final String hexcode,
      required final String subgroups,
      required final String tags}) = _$_OpenMoji;

  factory _OpenMoji.fromJson(Map<String, dynamic> json) = _$_OpenMoji.fromJson;

  @override
  String get annotation;
  @override
  Group get group;
  @override
  String get hexcode;
  @override
  String get subgroups;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMojiCopyWith<_$_OpenMoji> get copyWith =>
      throw _privateConstructorUsedError;
}
