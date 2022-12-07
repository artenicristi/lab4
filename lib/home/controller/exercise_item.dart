import '../../common/list_item.dart';

class ExerciseItem extends ListItem {
  final String title;
  final String cover;
  final int caloriesCount;
  final int durationSeconds;

  ExerciseItem({
    required this.title,
    required this.cover,
    required this.caloriesCount,
    required this.durationSeconds
  });
}