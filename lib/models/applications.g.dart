// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Applications _$ApplicationsFromJson(Map<String, dynamic> json) {
  return Applications(
    applications: (json as List)
        ?.map((e) =>
            e == null ? null : Application.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

// Map<String, dynamic> _$ApplicationsToJson(Applications instance) =>
//     <String, dynamic>{
//       'id': instance.id,
//       'title': instance.title,
//       'problem': instance.problem,
//       'decision': instance.decision,
//       'economy': instance.economy,
//       'other_authors': instance.other_authors,
//       'expenses': instance.expenses,
//       'stages': instance.stages,
//       'count_likes': instance.count_likes,
//       'created_at': instance.created_at,
//       'updated_at': instance.updated_at,
//       'chat_id': instance.chat_id,
//       'filePath':instance.filePath,
//       'impact':instance.impact,
//       'category':instance.category,
//     };
