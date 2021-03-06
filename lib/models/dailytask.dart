library dailytask;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

part 'dailytask.g.dart';

// enum DailyTaskStatus { completed, skipped, failed }

class DailyTaskStatus extends EnumClass {
  static Serializer<DailyTaskStatus> get serializer =>
      _$dailyTaskStatusSerializer;
  const DailyTaskStatus._(String name) : super(name);
  static BuiltSet<DailyTaskStatus> get values => _$dtsValues;
  static DailyTaskStatus valueOf(String name) => _$dtsValueOf(name);

  static const DailyTaskStatus completed = _$completed;
  static const DailyTaskStatus skipped = _$skipped;
  static const DailyTaskStatus failed = _$failed;
}

abstract class DailyTask implements Built<DailyTask, DailyTaskBuilder> {
  static Serializer<DailyTask> get serializer => _$dailyTaskSerializer;
  factory DailyTask([updates(DailyTaskBuilder b)]) = _$DailyTask;
  DailyTask._();

  @nullable
  int get habitID;

  @nullable
  DailyTaskStatus get status;

  int get seq;

  @nullable
  bool get isToday;

  @nullable
  bool get isYesterday;

  @nullable
  bool get isSelected;

  @nullable
  bool get isFuture;
}
