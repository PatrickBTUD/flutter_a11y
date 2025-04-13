import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do.freezed.dart';

@freezed
sealed class ToDo with _$ToDo {
  const factory ToDo({
    required int id,
    required String title,
    required String imagePath,
    required String imageAlt,
    required bool isSelected,
  }) = _ToDo;
}
