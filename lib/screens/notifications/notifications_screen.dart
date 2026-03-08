import  'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = '/notifications';
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'title': 'New Safety Tip',
        'desc': 'Learn how to spot fake login pages in 3 easy steps.',
        'time': '2h ago',
        'icon': Icons.lightbulb_outline_rounded,
        'color': AppColors.warning,
      },
      {
        'title': 'System Update',
        'desc': 'Our detection engine has been updated with the latest threat data.',
        'time': 'Yesterday',
        'icon': Icons.system_update_rounded,
        'color': AppColors.info,
      },
      {
        'title': 'Scan Warning',
        'desc': 'You recently scanned a link that was flagged as high risk.',
        'time': '2 days ago',
        'icon': Icons.warning_amber_rounded,
        'color': AppColors.error,
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: SingleChildScrollView(
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(24),
            separatorBuilder: (context, index) => SizedBox(
                height: 24,
            ),
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final item = notifications[index];
             return Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: (item[''] as Color).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(item['icon'] as IconData, color: item['color'] as Color),
                ),
                title: Text(item['title'] as String, style: AppTextStyles.h3),
                subtitle: Text(item['desc'] as String, style: AppTextStyles.bodyMedium14),
                trailing: Text(
                  item['time'] as String,
                  style: AppTextStyles.bodySmall12.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
