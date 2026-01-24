import 'package:flutter/material.dart';

class NotificationItem {
  final String category;
  final IconData icon;
  final Color color;
  final String title;
  final String description;
  final String time;
  final List<Widget> actions;

  NotificationItem({
    required this.category,
    required this.icon,
    required this.color,
    required this.title,
    required this.description,
    required this.time,
    required this.actions,
  });
}

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  String _selectedFilter = 'All';

  final List<NotificationItem> _notifications = [
    NotificationItem(
      category: 'Security',
      icon: Icons.warning,
      color: Colors.red,
      title: 'Unauthorized Access',
      description:
          'Unknown device "Android-BF42" attempted to connect to your network.',
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Block Device', style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
        TextButton(
          onPressed: () {},
          child: Text('View Details', style: TextStyle(color: Colors.white)),
        ),
      ],
      time: '1m ago',
    ),
    NotificationItem(
      category: 'Usage',
      icon: Icons.storage,
      color: Colors.orange,
      title: 'Data Limit Warning',
      description:
          'Device "Sarah\'s MacBook" reached 90% of its daily data allowance (4.5GB/5GB).',
      time: '1h ago',
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Adjust Limit', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {},
          child: Text('View Details', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
    NotificationItem(
      category: 'Security',
      icon: Icons.wifi,
      color: Colors.green,
      title: 'New Device Connected',
      description:
          'Device "Tom\'s iPhone" has connected to your network for the first time.',
      time: '3h ago',
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Manage Device', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {},
          child: Text('View Details', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
    NotificationItem(
      category: 'Usage',
      icon: Icons.access_time,
      color: Colors.blue,
      title: 'Time Restriction Alert',
      description:
          'Internet access for "Kids iPad" will be restricted in 15 minutes according to schedule.',
      time: 'Yesterday',
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Extend Time', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {},
          child: Text('View Schedule', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
    NotificationItem(
      category: 'Security',
      icon: Icons.system_update,
      color: Colors.grey,
      title: 'Router Firmware Update',
      description:
          'A new firmware update (v2.4.6) is available for your router. Includes security improvements.',
      time: '2 days ago',
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Update Now', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {},
          child: Text('View Details', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<NotificationItem> filteredNotifications =
        _notifications.where((item) {
          if (_selectedFilter == 'All') return true;
          return item.category == _selectedFilter;
        }).toList();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          titleSpacing: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.wifi,
                  size: 30,
                  color: Colors.lightGreenAccent,
                ),
              ),
              Text(
                "Future WiFi",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notifications',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Recent alerts and important WiFi events',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: FilterChip(
                                label: Text(
                                  'All',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                selected: _selectedFilter == 'All',
                                selectedColor: Colors.green,
                                showCheckmark: false,
                                onSelected: (selected) {
                                  if (selected) {
                                    setState(() {
                                      _selectedFilter = 'All';
                                    });
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: FilterChip(
                                label: Text(
                                  'Security',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                selected: _selectedFilter == 'Security',
                                selectedColor: Colors.green,
                                showCheckmark: false,
                                onSelected: (selected) {
                                  if (selected) {
                                    setState(() {
                                      _selectedFilter = 'Security';
                                    });
                                  }
                                },
                              ),
                            ),
                            FilterChip(
                              label: Text(
                                'Usage',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              selected: _selectedFilter == 'Usage',
                              selectedColor: Colors.green,
                              showCheckmark: false,
                              onSelected: (selected) {
                                if (selected) {
                                  setState(() {
                                    _selectedFilter = 'Usage';
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Clear All',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredNotifications.length,
                itemBuilder: (context, index) {
                  final item = filteredNotifications[index];
                  return _buildNotificationCard(
                    icon: item.icon,
                    color: item.color,
                    title: item.title,
                    description: item.description,
                    time: item.time,
                    actions: item.actions,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard({
    required IconData icon,
    required Color color,
    required String title,
    required String description,
    required String time,
    required List<Widget> actions,
  }) {
    return Card(
      color: Colors.black12,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: color, height: 150, width: 8),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(icon, color: color),
                      ),
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(description),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: actions.map((action) => action).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
