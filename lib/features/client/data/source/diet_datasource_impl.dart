import 'package:ssentif_manager_web/core/network/api_service.dart';
import 'package:ssentif_manager_web/features/client/data/model/monthly_diet_model.dart';
import 'package:ssentif_manager_web/features/client/data/source/diet_datasource.dart';

class DietDataSourceImpl extends DietDataSource {
  final ApiService apiService;

  DietDataSourceImpl({required this.apiService});

  @override
  Future<MonthlyDietListModel> getMonthlyDietList(
      int year, int month, int? clientId) {
    return apiService.getMonthlyDiets(
      year: year,
      month: month,
      clientId: clientId,
    );
  }
}

