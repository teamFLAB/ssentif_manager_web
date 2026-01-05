import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/monthly_diet_model.dart';
import 'package:ssentif_manager_web/features/client/data/model/diet_detail_model.dart';
import 'package:ssentif_manager_web/features/client/data/source/diet_datasource_impl.dart';

final dietDataSourceProvider = Provider<DietDataSource>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return DietDataSourceImpl(apiService: apiService);
});

abstract class DietDataSource {
  Future<MonthlyDietListModel> getMonthlyDietList(
      int year, int month, int? clientId);
  
  Future<DietModel> getDietDetailById(int dietId, int? clientId);
}

