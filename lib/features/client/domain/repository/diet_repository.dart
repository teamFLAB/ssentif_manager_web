import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ssentif_manager_web/core/network/api_status_entity.dart';
import 'package:ssentif_manager_web/features/client/data/mapper/daily_diet_thumbnails_mapper.dart';
import 'package:ssentif_manager_web/features/client/data/repository/diet_repository_impl.dart';
import 'package:ssentif_manager_web/features/client/data/source/diet_datasource.dart';
import 'package:ssentif_manager_web/features/client/domain/entity/uploaded_diet_entity.dart';
import 'package:ssentif_manager_web/core/utils/ext.dart';

abstract class DietRepository {
  Future<ApiStatusEntity<List<UploadedDietEntity>>> getMonthlyDietList(
      int year, int month, int? clientId);
}

final dietRepositoryProvider = Provider<DietRepository>((ref) {
  final dietDataSource = ref.read(dietDataSourceProvider);
  final dailyDietThumbnailsMapper =
      ref.read(dailyDietThumbnailsMapperProvider);
  return DietRepositoryImpl(
    dietDataSource: dietDataSource,
    dailyDietThumbnailsMapper: dailyDietThumbnailsMapper,
  );
});

