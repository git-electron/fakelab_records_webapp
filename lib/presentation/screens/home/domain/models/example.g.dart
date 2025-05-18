// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExampleImpl _$$ExampleImplFromJson(Map<String, dynamic> json) =>
    _$ExampleImpl(
      title: json['title'] as String,
      filePath: json['filePath'] as String,
      artists:
          (json['artists'] as List<dynamic>).map((e) => e as String).toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => $enumDecode(_$ExampleGenreEnumMap, e))
          .toList(),
      services: (json['services'] as List<dynamic>)
          .map((e) => $enumDecode(_$ExampleServiceTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ExampleImplToJson(_$ExampleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'filePath': instance.filePath,
      'artists': instance.artists,
      'genres': instance.genres.map((e) => _$ExampleGenreEnumMap[e]!).toList(),
      'services': instance.services
          .map((e) => _$ExampleServiceTypeEnumMap[e]!)
          .toList(),
    };

const _$ExampleGenreEnumMap = {
  ExampleGenre.HIP_HOP: 'HIP_HOP',
  ExampleGenre.POP: 'POP',
  ExampleGenre.ROCK: 'ROCK',
  ExampleGenre.AMBIENT: 'AMBIENT',
  ExampleGenre.EDM: 'EDM',
};

const _$ExampleServiceTypeEnumMap = {
  ExampleServiceType.BEAT: 'BEAT',
  ExampleServiceType.RECORDING: 'RECORDING',
  ExampleServiceType.MIX: 'MIX',
  ExampleServiceType.MASTERING: 'MASTERING',
};
