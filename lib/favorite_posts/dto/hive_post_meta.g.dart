// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_post_meta.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePostMetaAdapter extends TypeAdapter<HivePostMeta> {
  @override
  final int typeId = 0;

  @override
  HivePostMeta read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePostMeta(
      groupId: fields[0] as String,
      postId: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HivePostMeta obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.groupId)
      ..writeByte(1)
      ..write(obj.postId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePostMetaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
