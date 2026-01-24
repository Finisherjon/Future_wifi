import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  TimeFilter _selectedFilter = TimeFilter.today;
  List<WifiHistory> _historyData = [];

  @override
  void initState() {
    super.initState();
    _loadHistoryData();
  }

  void _loadHistoryData() {
    _historyData = [
      WifiHistory(
        period: "Today",
        totalDevices: 5,
        totalConnectionTime: Duration(hours: 12, minutes: 30),
        totalActiveTime: Duration(hours: 8, minutes: 15),
        totalInactiveTime: Duration(hours: 4, minutes: 15),
        totalDataUsed: 2450.5,
        devices: [
          DeviceUsage(
            deviceName: "John's iPhone",
            deviceId: "iphone-123",
            deviceType: "Mobile",
            totalConnectionTime: Duration(hours: 4, minutes: 15),
            totalActiveTime: Duration(hours: 3, minutes: 30),
            totalInactiveTime: Duration(minutes: 45),
            totalDataUsed: 1200.2,
            sessions: [
              ConnectionSession(
                joinTime: DateTime.now().subtract(
                  Duration(hours: 4, minutes: 15),
                ),
                disconnectTime: null,
                duration: Duration(hours: 4, minutes: 15),
                activeTime: Duration(hours: 3, minutes: 30),
                inactiveTime: Duration(minutes: 45),
                dataUsed: 1200.2,
                status: ConnectionStatus.active,
              ),
            ],
          ),
          DeviceUsage(
            deviceName: "Living Room TV",
            deviceId: "tv-456",
            deviceType: "Smart TV",
            totalConnectionTime: Duration(hours: 3, minutes: 0),
            totalActiveTime: Duration(hours: 2, minutes: 15),
            totalInactiveTime: Duration(minutes: 45),
            totalDataUsed: 850.3,
            sessions: [
              ConnectionSession(
                joinTime: DateTime.now().subtract(Duration(hours: 6)),
                disconnectTime: DateTime.now().subtract(Duration(hours: 3)),
                duration: Duration(hours: 3),
                activeTime: Duration(hours: 2, minutes: 15),
                inactiveTime: Duration(minutes: 45),
                dataUsed: 850.3,
                status: ConnectionStatus.disconnected,
              ),
            ],
          ),
          DeviceUsage(
            deviceName: "Work Laptop",
            deviceId: "laptop-789",
            deviceType: "Laptop",
            totalConnectionTime: Duration(hours: 5, minutes: 15),
            totalActiveTime: Duration(hours: 2, minutes: 30),
            totalInactiveTime: Duration(hours: 2, minutes: 45),
            totalDataUsed: 400.0,
            sessions: [
              ConnectionSession(
                joinTime: DateTime.now().subtract(
                  Duration(hours: 5, minutes: 15),
                ),
                disconnectTime: null,
                duration: Duration(hours: 5, minutes: 15),
                activeTime: Duration(hours: 2, minutes: 30),
                inactiveTime: Duration(hours: 2, minutes: 45),
                dataUsed: 400.0,
                status: ConnectionStatus.active,
              ),
            ],
          ),
          DeviceUsage(
            deviceName: "Sarah's Tablet",
            deviceId: "tablet-101",
            deviceType: "Tablet",
            totalConnectionTime: Duration(hours: 2, minutes: 30),
            totalActiveTime: Duration(hours: 1, minutes: 15),
            totalInactiveTime: Duration(hours: 1, minutes: 15),
            totalDataUsed: 320.5,
            sessions: [
              ConnectionSession(
                joinTime: DateTime.now().subtract(Duration(hours: 3)),
                disconnectTime: DateTime.now().subtract(Duration(minutes: 30)),
                duration: Duration(hours: 2, minutes: 30),
                activeTime: Duration(hours: 1, minutes: 15),
                inactiveTime: Duration(hours: 1, minutes: 15),
                dataUsed: 320.5,
                status: ConnectionStatus.disconnected,
              ),
            ],
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'WiFi History',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(icon: Icon(Icons.bar_chart), onPressed: _showChartDialog),
        ],
      ),
      body: Column(
        children: [
          _timeFilter(),
          _buildSummaryCard(),
          Expanded(child: _buildDevicesList()),
        ],
      ),
    );
  }

  Widget _timeFilter() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[400]!),
      ),
      child: Row(
        children: [
          _timeFilterItem(TimeFilter.today, Icons.today, 'Today'),
          _buildDivider(),
          _timeFilterItem(
            TimeFilter.last7Days,
            Icons.calendar_view_week,
            '7 Days',
          ),
          _buildDivider(),
          _timeFilterItem(
            TimeFilter.last30Days,
            Icons.calendar_today,
            '1 Month',
          ),
          _buildDivider(),
          _timeFilterItem(TimeFilter.last3Months, Icons.date_range, '3 Months'),
        ],
      ),
    );
  }

  Widget _timeFilterItem(TimeFilter filter, IconData icon, String label) {
    final isSelected = _selectedFilter == filter;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedFilter = filter;
            _loadHistoryData();
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          decoration: BoxDecoration(
            color: isSelected ? Colors.lightGreenAccent : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            boxShadow:
                isSelected
                    ? [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.3),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ]
                    : null,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20,
                color: isSelected ? Colors.black : Colors.grey[600],
              ),
              SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.black : Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(width: 1, height: 24, color: Colors.grey[300]);
  }

  void _showChartDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Usage Statistics'),
            content: Container(
              width: double.maxFinite,
              height: 400,
              child: _buildUsageChart(),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          ),
    );
  }

  Widget _buildUsageChart() {
    final devices = _historyData.first.devices;

    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY:
            devices
                .map((d) => d.totalDataUsed)
                .reduce((a, b) => a > b ? a : b) +
            200,
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (BarChartGroupData group) => Colors.blue,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              final device = devices[groupIndex];
              return BarTooltipItem(
                '${device.deviceName}\n',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: '${_formatData(rod.toY)}',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              );
            },
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final index = value.toInt();
                if (index >= 0 && index < devices.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      _getShortDeviceName(devices[index].deviceName),
                      style: TextStyle(fontSize: 10),
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }
                return Text('');
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(_formatData(value), style: TextStyle(fontSize: 10));
              },
            ),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        barGroups:
            devices.asMap().entries.map((entry) {
              final index = entry.key;
              final device = entry.value;
              return BarChartGroupData(
                x: index,
                barRods: [
                  BarChartRodData(
                    toY: device.totalDataUsed,
                    color: _getDeviceColor(device.deviceType),
                    width: 16,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              );
            }).toList(),
      ),
    );
  }

  String _getShortDeviceName(String fullName) {
    final words = fullName.split(' ');
    if (words.length > 1) {
      return words.last;
    }
    return fullName.length > 8 ? '${fullName.substring(0, 8)}..' : fullName;
  }

  Color _getDeviceColor(String deviceType) {
    switch (deviceType.toLowerCase()) {
      case 'mobile':
        return Colors.blue;
      case 'smart tv':
        return Colors.purple;
      case 'laptop':
        return Colors.green;
      case 'tablet':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  Widget _buildSummaryCard() {
    if (_historyData.isEmpty) return SizedBox();

    final history = _historyData.first;

    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Summary - ${history.period}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSummaryItem('Total Devices', '${history.totalDevices}'),
                _buildSummaryItem(
                  'Active Time',
                  _formatDuration(history.totalActiveTime),
                ),
                _buildSummaryItem(
                  'Data Used',
                  _formatData(history.totalDataUsed),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSummaryItem(
                  'Total Time',
                  _formatDuration(history.totalConnectionTime),
                ),
                _buildSummaryItem(
                  'Inactive Time',
                  _formatDuration(history.totalInactiveTime),
                ),
                _buildSummaryItem(
                  'Efficiency',
                  '${_calculateEfficiency(history.totalActiveTime, history.totalConnectionTime)}%',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _calculateEfficiency(Duration activeTime, Duration totalTime) {
    if (totalTime.inSeconds == 0) return '0';
    final efficiency = (activeTime.inSeconds / totalTime.inSeconds) * 100;
    return efficiency.toStringAsFixed(1);
  }

  Widget _buildSummaryItem(String title, String value) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildDevicesList() {
    if (_historyData.isEmpty) {
      return Center(child: Text('No data available'));
    }

    return ListView.builder(
      itemCount: _historyData.first.devices.length,
      itemBuilder: (context, index) {
        final device = _historyData.first.devices[index];
        return _buildDeviceCard(device);
      },
    );
  }

  Widget _buildDeviceCard(DeviceUsage device) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ExpansionTile(
        leading: _buildDeviceIcon(device.deviceType),
        title: Text(
          device.deviceName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total: ${_formatDuration(device.totalConnectionTime)}',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'Active: ${_formatDuration(device.totalActiveTime)}',
                  style: TextStyle(fontSize: 10, color: Colors.green),
                ),
                SizedBox(width: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  'Inactive: ${_formatDuration(device.totalInactiveTime)}',
                  style: TextStyle(fontSize: 10, color: Colors.orange),
                ),
              ],
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Device usage statistics
                _buildDeviceStats(device),
                SizedBox(height: 16),
                Text(
                  'Connection Sessions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),
                ...device.sessions.map((session) => _buildSessionTile(session)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeviceStats(DeviceUsage device) {
    final efficiency = _calculateEfficiency(
      device.totalActiveTime,
      device.totalConnectionTime,
    );

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatItem('Data Used', _formatData(device.totalDataUsed)),
              _buildStatItem('Efficiency', '$efficiency%'),
            ],
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            value:
                device.totalConnectionTime.inSeconds > 0
                    ? device.totalActiveTime.inSeconds /
                        device.totalConnectionTime.inSeconds
                    : 0,
            backgroundColor: Colors.orange,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Active Time',
                style: TextStyle(fontSize: 10, color: Colors.green),
              ),
              Text(
                'Inactive Time',
                style: TextStyle(fontSize: 10, color: Colors.orange),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 12, color: Colors.white)),
        Text(
          value,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildDeviceIcon(String deviceType) {
    IconData icon;
    Color color;

    switch (deviceType.toLowerCase()) {
      case 'mobile':
        icon = Icons.smartphone;
        color = Colors.blue;
        break;
      case 'smart tv':
        icon = Icons.tv;
        color = Colors.purple;
        break;
      case 'laptop':
        icon = Icons.laptop;
        color = Colors.green;
        break;
      case 'tablet':
        icon = Icons.tablet;
        color = Colors.orange;
        break;
      default:
        icon = Icons.devices;
        color = Colors.grey;
    }

    return Icon(icon, color: color);
  }

  Widget _buildSessionTile(ConnectionSession session) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: _getStatusColor(session.status),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          _getStatusText(session.status),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Joined: ${DateFormat('MMM dd, HH:mm').format(session.joinTime)}',
                      style: TextStyle(fontSize: 12),
                    ),
                    if (session.disconnectTime != null)
                      Text(
                        'Left: ${DateFormat('MMM dd, HH:mm').format(session.disconnectTime!)}',
                        style: TextStyle(fontSize: 12),
                      ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _formatDuration(session.duration),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _formatData(session.dataUsed),
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          // Active/Inactive time for session
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSessionTimeItem('Active', session.activeTime, Colors.green),
              _buildSessionTimeItem(
                'Inactive',
                session.inactiveTime,
                Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSessionTimeItem(String label, Duration duration, Color color) {
    return Row(
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: 4),
        Text(
          '$label: ',
          style: TextStyle(fontSize: 10, color: Colors.grey[600]),
        ),
        Text(
          _formatDuration(duration),
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }

  Color _getStatusColor(ConnectionStatus status) {
    switch (status) {
      case ConnectionStatus.active:
        return Colors.green;
      case ConnectionStatus.inactive:
        return Colors.orange;
      case ConnectionStatus.disconnected:
        return Colors.red;
    }
  }

  String _getStatusText(ConnectionStatus status) {
    switch (status) {
      case ConnectionStatus.active:
        return 'Active';
      case ConnectionStatus.inactive:
        return 'Inactive';
      case ConnectionStatus.disconnected:
        return 'Disconnected';
    }
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else if (minutes > 0) {
      return '${minutes}m';
    } else {
      return '${duration.inSeconds}s';
    }
  }

  String _formatData(double dataInMB) {
    if (dataInMB >= 1024) {
      return '${(dataInMB / 1024).toStringAsFixed(2)} GB';
    } else {
      return '${dataInMB.toStringAsFixed(2)} MB';
    }
  }
}

// Data models
enum TimeFilter { today, last7Days, last30Days, last3Months }

enum ConnectionStatus { active, inactive, disconnected }

class WifiHistory {
  final String period;
  final List<DeviceUsage> devices;
  final int totalDevices;
  final Duration totalConnectionTime;
  final Duration totalActiveTime;
  final Duration totalInactiveTime;
  final double totalDataUsed;

  WifiHistory({
    required this.period,
    required this.devices,
    required this.totalDevices,
    required this.totalConnectionTime,
    required this.totalActiveTime,
    required this.totalInactiveTime,
    required this.totalDataUsed,
  });
}

class DeviceUsage {
  final String deviceName;
  final String deviceId;
  final String deviceType;
  final List<ConnectionSession> sessions;
  final Duration totalConnectionTime;
  final Duration totalActiveTime;
  final Duration totalInactiveTime;
  final double totalDataUsed;

  DeviceUsage({
    required this.deviceName,
    required this.deviceId,
    required this.deviceType,
    required this.sessions,
    required this.totalConnectionTime,
    required this.totalActiveTime,
    required this.totalInactiveTime,
    required this.totalDataUsed,
  });
}

class ConnectionSession {
  final DateTime joinTime;
  final DateTime? disconnectTime;
  final Duration duration;
  final Duration activeTime;
  final Duration inactiveTime;
  final double dataUsed;
  final ConnectionStatus status;

  ConnectionSession({
    required this.joinTime,
    this.disconnectTime,
    required this.duration,
    required this.activeTime,
    required this.inactiveTime,
    required this.dataUsed,
    required this.status,
  });
}
