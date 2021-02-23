// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'planet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlanetTearOff {
  const _$PlanetTearOff();

// ignore: unused_element
  _Planet call(
      {@required String id,
      @required PlanetId planetId,
      @required String name,
      @required String image,
      String description}) {
    return _Planet(
      id: id,
      planetId: planetId,
      name: name,
      image: image,
      description: description,
    );
  }

// ignore: unused_element
  _PlanetEmpty empty() {
    return const _PlanetEmpty();
  }
}

/// @nodoc
// ignore: unused_element
const $Planet = _$PlanetTearOff();

/// @nodoc
mixin _$Planet {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, PlanetId planetId, String name, String image,
        String description), {
    @required TResult empty(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, PlanetId planetId, String name, String image,
        String description), {
    TResult empty(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Planet value), {
    @required TResult empty(_PlanetEmpty value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Planet value), {
    TResult empty(_PlanetEmpty value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PlanetCopyWith<$Res> {
  factory $PlanetCopyWith(Planet value, $Res Function(Planet) then) =
      _$PlanetCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlanetCopyWithImpl<$Res> implements $PlanetCopyWith<$Res> {
  _$PlanetCopyWithImpl(this._value, this._then);

  final Planet _value;
  // ignore: unused_field
  final $Res Function(Planet) _then;
}

/// @nodoc
abstract class _$PlanetCopyWith<$Res> {
  factory _$PlanetCopyWith(_Planet value, $Res Function(_Planet) then) =
      __$PlanetCopyWithImpl<$Res>;
  $Res call(
      {String id,
      PlanetId planetId,
      String name,
      String image,
      String description});
}

/// @nodoc
class __$PlanetCopyWithImpl<$Res> extends _$PlanetCopyWithImpl<$Res>
    implements _$PlanetCopyWith<$Res> {
  __$PlanetCopyWithImpl(_Planet _value, $Res Function(_Planet) _then)
      : super(_value, (v) => _then(v as _Planet));

  @override
  _Planet get _value => super._value as _Planet;

  @override
  $Res call({
    Object id = freezed,
    Object planetId = freezed,
    Object name = freezed,
    Object image = freezed,
    Object description = freezed,
  }) {
    return _then(_Planet(
      id: id == freezed ? _value.id : id as String,
      planetId: planetId == freezed ? _value.planetId : planetId as PlanetId,
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_Planet implements _Planet {
  const _$_Planet(
      {@required this.id,
      @required this.planetId,
      @required this.name,
      @required this.image,
      this.description})
      : assert(id != null),
        assert(planetId != null),
        assert(name != null),
        assert(image != null);

  @override
  final String id;
  @override
  final PlanetId planetId;
  @override
  final String name;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'Planet(id: $id, planetId: $planetId, name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Planet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.planetId, planetId) ||
                const DeepCollectionEquality()
                    .equals(other.planetId, planetId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(planetId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PlanetCopyWith<_Planet> get copyWith =>
      __$PlanetCopyWithImpl<_Planet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, PlanetId planetId, String name, String image,
        String description), {
    @required TResult empty(),
  }) {
    assert($default != null);
    assert(empty != null);
    return $default(id, planetId, name, image, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, PlanetId planetId, String name, String image,
        String description), {
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id, planetId, name, image, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Planet value), {
    @required TResult empty(_PlanetEmpty value),
  }) {
    assert($default != null);
    assert(empty != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Planet value), {
    TResult empty(_PlanetEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Planet implements Planet {
  const factory _Planet(
      {@required String id,
      @required PlanetId planetId,
      @required String name,
      @required String image,
      String description}) = _$_Planet;

  String get id;
  PlanetId get planetId;
  String get name;
  String get image;
  String get description;
  @JsonKey(ignore: true)
  _$PlanetCopyWith<_Planet> get copyWith;
}

/// @nodoc
abstract class _$PlanetEmptyCopyWith<$Res> {
  factory _$PlanetEmptyCopyWith(
          _PlanetEmpty value, $Res Function(_PlanetEmpty) then) =
      __$PlanetEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlanetEmptyCopyWithImpl<$Res> extends _$PlanetCopyWithImpl<$Res>
    implements _$PlanetEmptyCopyWith<$Res> {
  __$PlanetEmptyCopyWithImpl(
      _PlanetEmpty _value, $Res Function(_PlanetEmpty) _then)
      : super(_value, (v) => _then(v as _PlanetEmpty));

  @override
  _PlanetEmpty get _value => super._value as _PlanetEmpty;
}

/// @nodoc
class _$_PlanetEmpty implements _PlanetEmpty {
  const _$_PlanetEmpty();

  @override
  String toString() {
    return 'Planet.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PlanetEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, PlanetId planetId, String name, String image,
        String description), {
    @required TResult empty(),
  }) {
    assert($default != null);
    assert(empty != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, PlanetId planetId, String name, String image,
        String description), {
    TResult empty(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_Planet value), {
    @required TResult empty(_PlanetEmpty value),
  }) {
    assert($default != null);
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_Planet value), {
    TResult empty(_PlanetEmpty value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _PlanetEmpty implements Planet {
  const factory _PlanetEmpty() = _$_PlanetEmpty;
}
