import 'package:flutter/material.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/component/small_button.dart';
import 'package:provider/provider.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/notification/notification_view_model.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/text_styles.dart';
import 'package:food_recipe_app/03_food_recipe_app/presentation/ui/color_styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotificationViewModel>();
    final screenHeight = MediaQuery.of(context).size.height;
    final responsiveHeight = screenHeight * 0.03; // 화면 높이의 3%로 설정

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Notification',
                  style: TextStyles.mediumTextBold,
                ),
              ),
            ),
            SizedBox(height: responsiveHeight), // 반응형 높이 설정
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFilterButton(context, 'All', NotificationFilter.all),
                  _buildFilterButton(context, 'Read', NotificationFilter.read),
                  _buildFilterButton(context, 'Unread', NotificationFilter.unread),
                ],
              ),
            ),
            SizedBox(height: responsiveHeight), // 추가된 부분
            viewModel.isLoading
                ? const Center(child: CircularProgressIndicator())
                : Column(
              children: viewModel.filteredNotifications.map((notification) {
                return ListTile(
                  leading: Icon(Icons.notifications,
                      color: notification.isRead
                          ? Colors.grey
                          : ColorStyles.primary100),
                  title: Text(notification.foodTitle),
                  subtitle: Text(notification.creator),
                  trailing: Text(notification.time),
                  onTap: () => viewModel.markAsRead(notification.id),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(BuildContext context, String title, NotificationFilter filter) {
    final viewModel = context.watch<NotificationViewModel>();
    final isSelected = viewModel.currentFilter == filter;

    return SmallButton(
      title: title,
      onTap: () => viewModel.setFilter(filter),
      // SmallButton의 스타일을 동적으로 변경
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          isSelected ? ColorStyles.primary100 : Colors.white,
        ),
        foregroundColor: WidgetStateProperty.all(
          isSelected ? Colors.white : ColorStyles.primary100,
        ),
        side: WidgetStateProperty.all(
          BorderSide(
            color: isSelected ? ColorStyles.primary100 : Colors.white,
          ),
        ),
      ),
    );
  }
}