import '../../common/list_item.dart';

class GoalItem extends ListItem {
  final String cover;
  final String title;
  final String subTitle;
  final int caloriesCount;
  final int durationSeconds;

  GoalItem({
    required this.cover,
    required this.title,
    required this.subTitle,
    required this.caloriesCount,
    required this.durationSeconds
  });
}