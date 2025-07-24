
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_list_model.freezed.dart';
part 'client_list_model.g.dart';

@freezed
class ClientListModel with _$ClientListModel {
  factory ClientListModel({
    @Default(-1) int id,
    @Default("") String img,
    @Default("") String name,
    @Default(0) int age,
    @Default("") String sex,
    @Default("") String status,
    @Default("") String phoneNumber,
    @Default(0) int leftNumberOfTime,
  }) = _ClientListModel;

  factory ClientListModel.fromJson(Map<String,dynamic> json) => _$ClientListModelFromJson(json);
}