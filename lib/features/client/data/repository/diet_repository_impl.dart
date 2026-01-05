import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/daily_diet_thumbnails_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/diet_detail_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/source/diet_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/uploaded_diet_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/diet_entity.dart';
import 'package:ssentif_manager_web/features/client/domain/repository/diet_repository.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';

class DietRepositoryImpl extends DietRepository {
  final DietDataSource dietDataSource;
  final DailyDietThumbnailsMapper dailyDietThumbnailsMapper;
  final DietDetailMapper dietDetailMapper;

  DietRepositoryImpl({
    required this.dietDataSource,
    required this.dailyDietThumbnailsMapper,
    required this.dietDetailMapper,
  });

  @override
  Future<ApiStatusEntity<List<UploadedDietEntity>>> getMonthlyDietList(
      int year, int month, int? clientId) async {
    try {
      var response =
          await dietDataSource.getMonthlyDietList(year, month, clientId);
      return ApiStatusEntity(
        data: response.dietMonthlyResponses
            .map((e) => dailyDietThumbnailsMapper.map(e))
            .toList()
            .flatten(),
      );
    } catch (e) {
      return e.toErrorEntity();
    }
  }

  @override
  Future<ApiStatusEntity<DietEntity>> getDietDetailById(
      int dietId, int? clientId) async {
    try {
      var response = await dietDataSource.getDietDetailById(dietId, clientId);
      return ApiStatusEntity(data: dietDetailMapper.map(response));
    } catch (e) {
      return e.toErrorEntity();
    }
  }
}

