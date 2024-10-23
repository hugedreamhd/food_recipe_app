import 'package:flutter/foundation.dart';
import 'package:food_recipe_app/03_food_recipe_app/model/recipe.dart';
import 'package:food_recipe_app/03_food_recipe_app/data/data_source/recipe/mock_recipe_data_source.dart';

enum NotificationFilter { all, read, unread }

class NotificationViewModel with ChangeNotifier {
  List<Recipe> _notifications = [];

  NotificationFilter _currentFilter = NotificationFilter.all;

  NotificationFilter get currentFilter => _currentFilter;

  bool get isLoading => _isLoading;

  bool _isLoading = false;

  List<Recipe> get filteredNotifications {
    switch (_currentFilter) {
      case NotificationFilter.all:
        return _notifications;
      case NotificationFilter.read:
        return _notifications.where((notification) => notification.isRead).toList();
      case NotificationFilter.unread:
        return _notifications.where((notification) => !notification.isRead).toList();
    }
  }

  NotificationViewModel() {
    getNotifications();
  }

  Future<void> getNotifications() async {
    _isLoading = true;
    notifyListeners();

    // Mock data source 사용
    _notifications = await MockRecipeDataSource().getRecipes();

    _isLoading = false;
    notifyListeners();
  }

  void setFilter(NotificationFilter filter) {
    _currentFilter = filter;
    notifyListeners();
  }

  void markAsRead(String id) {
    final index = _notifications.indexWhere((notification) => notification.id == id);
    if (index != -1) {
      _notifications[index] = _notifications[index].copyWith(isRead: true);
      notifyListeners();
    }
  }
}