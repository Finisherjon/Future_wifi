// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
//
// // ─── DATA MODELS ────────────────────────────────────────────────────────────
//
// class ActivityDetail {
//   final String id;
//   final String name;
//   final String type; // 'app' | 'website'
//   final String icon;
//   final String entryTime;
//   final String exitTime;
//   final int duration; // minutes
//   final int dataUsed; // MB
//   final String category;
//
//   const ActivityDetail({
//     required this.id,
//     required this.name,
//     required this.type,
//     required this.icon,
//     required this.entryTime,
//     required this.exitTime,
//     required this.duration,
//     required this.dataUsed,
//     required this.category,
//   });
// }
//
// class TrafficData {
//   final String time;
//   final int data;
//   final int duration;
//   final List<ActivityDetail> activities;
//
//   const TrafficData({
//     required this.time,
//     required this.data,
//     required this.duration,
//     required this.activities,
//   });
// }
//
// // ─── SAMPLE DATA ─────────────────────────────────────────────────────────────
//
// final List<TrafficData> todayData = [
//   TrafficData(
//     time: '00:00',
//     data: 12,
//     duration: 15,
//     activities: [
//       ActivityDetail(
//         id: '1',
//         name: 'Instagram',
//         type: 'app',
//         icon: '📸',
//         entryTime: '00:15',
//         exitTime: '00:30',
//         duration: 15,
//         dataUsed: 12,
//         category: 'Social Media',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: '03:00',
//     data: 5,
//     duration: 8,
//     activities: [
//       ActivityDetail(
//         id: '2',
//         name: 'Gmail',
//         type: 'app',
//         icon: '📧',
//         entryTime: '03:22',
//         exitTime: '03:30',
//         duration: 8,
//         dataUsed: 5,
//         category: 'Email',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: '06:00',
//     data: 8,
//     duration: 12,
//     activities: [
//       ActivityDetail(
//         id: '3',
//         name: 'Weather',
//         type: 'app',
//         icon: '🌤️',
//         entryTime: '06:45',
//         exitTime: '06:48',
//         duration: 3,
//         dataUsed: 2,
//         category: 'Utilities',
//       ),
//       ActivityDetail(
//         id: '4',
//         name: 'BBC News',
//         type: 'website',
//         icon: '📰',
//         entryTime: '06:50',
//         exitTime: '06:59',
//         duration: 9,
//         dataUsed: 6,
//         category: 'News',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: '09:00',
//     data: 145,
//     duration: 95,
//     activities: [
//       ActivityDetail(
//         id: '5',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: '09:15',
//         exitTime: '09:45',
//         duration: 30,
//         dataUsed: 85,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: '6',
//         name: 'Spotify',
//         type: 'app',
//         icon: '🎵',
//         entryTime: '09:50',
//         exitTime: '10:30',
//         duration: 40,
//         dataUsed: 35,
//         category: 'Music',
//       ),
//       ActivityDetail(
//         id: '7',
//         name: 'Twitter',
//         type: 'app',
//         icon: '🐦',
//         entryTime: '10:35',
//         exitTime: '10:50',
//         duration: 15,
//         dataUsed: 18,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: '8',
//         name: 'Reddit',
//         type: 'website',
//         icon: '🔶',
//         entryTime: '10:52',
//         exitTime: '11:02',
//         duration: 10,
//         dataUsed: 7,
//         category: 'Social Media',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: '12:00',
//     data: 89,
//     duration: 65,
//     activities: [
//       ActivityDetail(
//         id: '9',
//         name: 'Netflix',
//         type: 'app',
//         icon: '🎬',
//         entryTime: '12:30',
//         exitTime: '13:05',
//         duration: 35,
//         dataUsed: 65,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: '10',
//         name: 'WhatsApp',
//         type: 'app',
//         icon: '💬',
//         entryTime: '13:10',
//         exitTime: '13:35',
//         duration: 25,
//         dataUsed: 18,
//         category: 'Messaging',
//       ),
//       ActivityDetail(
//         id: '11',
//         name: 'Amazon',
//         type: 'website',
//         icon: '🛒',
//         entryTime: '13:38',
//         exitTime: '13:43',
//         duration: 5,
//         dataUsed: 6,
//         category: 'Shopping',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: '15:00',
//     data: 234,
//     duration: 145,
//     activities: [
//       ActivityDetail(
//         id: '12',
//         name: 'TikTok',
//         type: 'app',
//         icon: '🎭',
//         entryTime: '15:20',
//         exitTime: '16:25',
//         duration: 65,
//         dataUsed: 125,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: '13',
//         name: 'Instagram',
//         type: 'app',
//         icon: '📸',
//         entryTime: '16:30',
//         exitTime: '17:10',
//         duration: 40,
//         dataUsed: 68,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: '14',
//         name: 'Facebook',
//         type: 'app',
//         icon: '👥',
//         entryTime: '17:15',
//         exitTime: '17:45',
//         duration: 30,
//         dataUsed: 32,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: '15',
//         name: 'Slack',
//         type: 'app',
//         icon: '💼',
//         entryTime: '17:50',
//         exitTime: '18:00',
//         duration: 10,
//         dataUsed: 9,
//         category: 'Work',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: '18:00',
//     data: 178,
//     duration: 120,
//     activities: [
//       ActivityDetail(
//         id: '16',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: '18:30',
//         exitTime: '19:25',
//         duration: 55,
//         dataUsed: 98,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: '17',
//         name: 'Google Maps',
//         type: 'app',
//         icon: '🗺️',
//         entryTime: '19:30',
//         exitTime: '19:50',
//         duration: 20,
//         dataUsed: 15,
//         category: 'Navigation',
//       ),
//       ActivityDetail(
//         id: '18',
//         name: 'Uber Eats',
//         type: 'app',
//         icon: '🍔',
//         entryTime: '20:00',
//         exitTime: '20:10',
//         duration: 10,
//         dataUsed: 8,
//         category: 'Food',
//       ),
//       ActivityDetail(
//         id: '19',
//         name: 'Medium.com',
//         type: 'website',
//         icon: '📝',
//         entryTime: '20:15',
//         exitTime: '20:45',
//         duration: 30,
//         dataUsed: 22,
//         category: 'Reading',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: '21:00',
//     data: 156,
//     duration: 98,
//     activities: [
//       ActivityDetail(
//         id: '21',
//         name: 'Twitch',
//         type: 'app',
//         icon: '🎮',
//         entryTime: '21:15',
//         exitTime: '22:05',
//         duration: 50,
//         dataUsed: 89,
//         category: 'Gaming',
//       ),
//       ActivityDetail(
//         id: '22',
//         name: 'Discord',
//         type: 'app',
//         icon: '💬',
//         entryTime: '22:10',
//         exitTime: '22:35',
//         duration: 25,
//         dataUsed: 28,
//         category: 'Communication',
//       ),
//       ActivityDetail(
//         id: '23',
//         name: 'Twitter',
//         type: 'app',
//         icon: '🐦',
//         entryTime: '22:40',
//         exitTime: '22:58',
//         duration: 18,
//         dataUsed: 24,
//         category: 'Social Media',
//       ),
//     ],
//   ),
// ];
//
// final List<TrafficData> weekData = [
//   TrafficData(
//     time: 'Mon',
//     data: 523,
//     duration: 385,
//     activities: [
//       ActivityDetail(
//         id: 'm1',
//         name: 'Slack',
//         type: 'app',
//         icon: '💼',
//         entryTime: '08:00',
//         exitTime: '09:30',
//         duration: 90,
//         dataUsed: 45,
//         category: 'Work',
//       ),
//       ActivityDetail(
//         id: 'm2',
//         name: 'Zoom',
//         type: 'app',
//         icon: '📹',
//         entryTime: '10:00',
//         exitTime: '11:30',
//         duration: 90,
//         dataUsed: 120,
//         category: 'Video Call',
//       ),
//       ActivityDetail(
//         id: 'm3',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: '14:00',
//         exitTime: '15:30',
//         duration: 90,
//         dataUsed: 185,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'm4',
//         name: 'Spotify',
//         type: 'app',
//         icon: '🎵',
//         entryTime: '20:00',
//         exitTime: '21:15',
//         duration: 75,
//         dataUsed: 82,
//         category: 'Music',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Tue',
//     data: 678,
//     duration: 421,
//     activities: [
//       ActivityDetail(
//         id: 't1',
//         name: 'Instagram',
//         type: 'app',
//         icon: '📸',
//         entryTime: '07:30',
//         exitTime: '08:15',
//         duration: 45,
//         dataUsed: 56,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: 't2',
//         name: 'Netflix',
//         type: 'app',
//         icon: '🎬',
//         entryTime: '09:00',
//         exitTime: '10:45',
//         duration: 105,
//         dataUsed: 245,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 't3',
//         name: 'TikTok',
//         type: 'app',
//         icon: '🎭',
//         entryTime: '16:00',
//         exitTime: '17:25',
//         duration: 85,
//         dataUsed: 178,
//         category: 'Social Media',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Wed',
//     data: 445,
//     duration: 312,
//     activities: [
//       ActivityDetail(
//         id: 'w1',
//         name: 'Google Drive',
//         type: 'app',
//         icon: '📁',
//         entryTime: '10:00',
//         exitTime: '11:30',
//         duration: 90,
//         dataUsed: 125,
//         category: 'Cloud Storage',
//       ),
//       ActivityDetail(
//         id: 'w2',
//         name: 'Spotify',
//         type: 'app',
//         icon: '🎵',
//         entryTime: '12:00',
//         exitTime: '13:20',
//         duration: 80,
//         dataUsed: 68,
//         category: 'Music',
//       ),
//       ActivityDetail(
//         id: 'w3',
//         name: 'Facebook',
//         type: 'app',
//         icon: '👥',
//         entryTime: '15:00',
//         exitTime: '16:15',
//         duration: 75,
//         dataUsed: 112,
//         category: 'Social Media',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Thu',
//     data: 789,
//     duration: 502,
//     activities: [
//       ActivityDetail(
//         id: 'th1',
//         name: 'Teams',
//         type: 'app',
//         icon: '💼',
//         entryTime: '09:00',
//         exitTime: '10:30',
//         duration: 90,
//         dataUsed: 156,
//         category: 'Work',
//       ),
//       ActivityDetail(
//         id: 'th2',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: '11:00',
//         exitTime: '12:45',
//         duration: 105,
//         dataUsed: 234,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'th3',
//         name: 'Twitch',
//         type: 'app',
//         icon: '🎮',
//         entryTime: '15:30',
//         exitTime: '17:00',
//         duration: 90,
//         dataUsed: 189,
//         category: 'Gaming',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Fri',
//     data: 891,
//     duration: 567,
//     activities: [
//       ActivityDetail(
//         id: 'f1',
//         name: 'Slack',
//         type: 'app',
//         icon: '💼',
//         entryTime: '08:00',
//         exitTime: '09:45',
//         duration: 105,
//         dataUsed: 67,
//         category: 'Work',
//       ),
//       ActivityDetail(
//         id: 'f2',
//         name: 'Netflix',
//         type: 'app',
//         icon: '🎬',
//         entryTime: '12:00',
//         exitTime: '14:30',
//         duration: 150,
//         dataUsed: 345,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'f3',
//         name: 'TikTok',
//         type: 'app',
//         icon: '🎭',
//         entryTime: '19:00',
//         exitTime: '20:45',
//         duration: 105,
//         dataUsed: 198,
//         category: 'Social Media',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Sat',
//     data: 1234,
//     duration: 723,
//     activities: [
//       ActivityDetail(
//         id: 's1',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: '10:00',
//         exitTime: '12:30',
//         duration: 150,
//         dataUsed: 298,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 's2',
//         name: 'Instagram',
//         type: 'app',
//         icon: '📸',
//         entryTime: '13:00',
//         exitTime: '14:45',
//         duration: 105,
//         dataUsed: 145,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: 's3',
//         name: 'Netflix',
//         type: 'app',
//         icon: '🎬',
//         entryTime: '16:00',
//         exitTime: '18:30',
//         duration: 150,
//         dataUsed: 356,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 's4',
//         name: 'Discord',
//         type: 'app',
//         icon: '💬',
//         entryTime: '21:30',
//         exitTime: '23:43',
//         duration: 133,
//         dataUsed: 167,
//         category: 'Communication',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Sun',
//     data: 1067,
//     duration: 645,
//     activities: [
//       ActivityDetail(
//         id: 'su1',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: '11:00',
//         exitTime: '13:15',
//         duration: 135,
//         dataUsed: 287,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'su2',
//         name: 'Instagram',
//         type: 'app',
//         icon: '📸',
//         entryTime: '17:00',
//         exitTime: '18:15',
//         duration: 75,
//         dataUsed: 98,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: 'su3',
//         name: 'HBO Max',
//         type: 'app',
//         icon: '🎬',
//         entryTime: '19:00',
//         exitTime: '21:30',
//         duration: 150,
//         dataUsed: 298,
//         category: 'Video',
//       ),
//     ],
//   ),
// ];
//
// final List<TrafficData> monthData = [
//   TrafficData(
//     time: 'Wk 1',
//     data: 4521,
//     duration: 2456,
//     activities: [
//       ActivityDetail(
//         id: 'wk1-1',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 456,
//         dataUsed: 1234,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'wk1-2',
//         name: 'Instagram',
//         type: 'app',
//         icon: '📸',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 389,
//         dataUsed: 876,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: 'wk1-3',
//         name: 'Netflix',
//         type: 'app',
//         icon: '🎬',
//         entryTime: 'Sat',
//         exitTime: 'Sun',
//         duration: 345,
//         dataUsed: 789,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'wk1-4',
//         name: 'WhatsApp',
//         type: 'app',
//         icon: '💬',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 234,
//         dataUsed: 456,
//         category: 'Messaging',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Wk 2',
//     data: 5234,
//     duration: 2789,
//     activities: [
//       ActivityDetail(
//         id: 'wk2-1',
//         name: 'TikTok',
//         type: 'app',
//         icon: '🎭',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 567,
//         dataUsed: 1456,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: 'wk2-2',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 498,
//         dataUsed: 1123,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'wk2-3',
//         name: 'Facebook',
//         type: 'app',
//         icon: '👥',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 356,
//         dataUsed: 678,
//         category: 'Social Media',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Wk 3',
//     data: 4987,
//     duration: 2634,
//     activities: [
//       ActivityDetail(
//         id: 'wk3-1',
//         name: 'Netflix',
//         type: 'app',
//         icon: '🎬',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 512,
//         dataUsed: 1345,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'wk3-2',
//         name: 'Instagram',
//         type: 'app',
//         icon: '📸',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 445,
//         dataUsed: 978,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: 'wk3-3',
//         name: 'Spotify',
//         type: 'app',
//         icon: '🎵',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 367,
//         dataUsed: 456,
//         category: 'Music',
//       ),
//     ],
//   ),
//   TrafficData(
//     time: 'Wk 4',
//     data: 5678,
//     duration: 2912,
//     activities: [
//       ActivityDetail(
//         id: 'wk4-1',
//         name: 'YouTube',
//         type: 'app',
//         icon: '📺',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 589,
//         dataUsed: 1567,
//         category: 'Video',
//       ),
//       ActivityDetail(
//         id: 'wk4-2',
//         name: 'TikTok',
//         type: 'app',
//         icon: '🎭',
//         entryTime: 'Mon',
//         exitTime: 'Sun',
//         duration: 523,
//         dataUsed: 1234,
//         category: 'Social Media',
//       ),
//       ActivityDetail(
//         id: 'wk4-3',
//         name: 'HBO Max',
//         type: 'app',
//         icon: '🎬',
//         entryTime: 'Sat',
//         exitTime: 'Sun',
//         duration: 398,
//         dataUsed: 923,
//         category: 'Video',
//       ),
//     ],
//   ),
// ];
//
// // ─── THEME ───────────────────────────────────────────────────────────────────
//
// class FutureWifiTheme {
//   // Background
//   static const Color bgDark = Color(0xFF0A0E1A);
//   static const Color bgCard = Color(0xFF111827);
//   static const Color bgCardAlt = Color(0xFF1A2236);
//
//   // ── Signature Future WiFi colors ──
//   static const Color signatureGreen = Color(0xFFCCFF90);
//   static const Color signatureGreenDark = Color(0xFF69F0AE);
//
//   // Accent colors
//   static const Color accentBlue = Color(0xFF3B82F6);
//   static const Color accentCyan = Color(0xFF06B6D4);
//   static const Color accentPurple = Color(0xFF8B5CF6);
//   static const Color accentGreen = Color(0xFFCCFF90);
//
//   // Text
//   static const Color textPrimary = Color(0xFFE2E8F0);
//   static const Color textSecondary = Color(0xFF94A3B8);
//   static const Color textMuted = Color(0xFF475569);
//
//   // Border
//   static const Color border = Color(0xFF1E293B);
//
//   // Bar chart colors — signature green-led palette
//   static const List<Color> barColors = [
//     Color(0xFF69F0AE), // green
//     Color(0xFF00E5FF), // cyan
//     Color(0xFF448AFF), // blue
//     Color(0xFFAA00FF), // purple
//     Color(0xFFFFD740), // amber
//     Color(0xFFCCFF90), // lime
//     Color(0xFF26C6DA), // teal
//   ];
//
//   static LinearGradient get appBarGradient => const LinearGradient(
//     colors: [Color(0xFF0A0E1A), Color(0xFF0D1F0D)],
//     begin: Alignment.topLeft,
//     end: Alignment.bottomRight,
//   );
//
//   static LinearGradient get accentGradient => const LinearGradient(
//     colors: [signatureGreen, signatureGreenDark],
//     begin: Alignment.centerLeft,
//     end: Alignment.centerRight,
//   );
//
//   static LinearGradient get cyanGradient => const LinearGradient(
//     colors: [accentCyan, signatureGreenDark],
//     begin: Alignment.centerLeft,
//     end: Alignment.centerRight,
//   );
//
//   static BoxDecoration get cardDecoration => BoxDecoration(
//     color: bgCard,
//     borderRadius: BorderRadius.circular(20),
//     border: Border.all(color: border, width: 1),
//   );
// }
//
// // ─── HELPERS ─────────────────────────────────────────────────────────────────
//
// String formatData(int mb) {
//   if (mb >= 1024) {
//     return '${(mb / 1024).toStringAsFixed(2)} GB';
//   }
//   return '$mb MB';
// }
//
// String formatTime(int minutes) {
//   final hours = minutes ~/ 60;
//   final mins = minutes % 60;
//   if (hours > 0) return '${hours}h ${mins}m';
//   return '${mins}m';
// }
//
// // ─── MAIN SCREEN ─────────────────────────────────────────────────────────────
//
// class TrafficHistoryScreen extends StatefulWidget {
//   final String? hostname;
//   final String? ip;
//   final String? mac;
//
//   const TrafficHistoryScreen({super.key, this.hostname, this.ip, this.mac});
//
//   @override
//   State<TrafficHistoryScreen> createState() => _TrafficHistoryScreenState();
// }
//
// class _TrafficHistoryScreenState extends State<TrafficHistoryScreen>
//     with SingleTickerProviderStateMixin {
//   String _period = 'today'; // 'today' | 'week' | 'month'
//   String? _selectedTime;
//   int _timeOffset = 0;
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//     _tabController.addListener(() {
//       if (!_tabController.indexIsChanging) {
//         final periods = ['today', 'week', 'month'];
//         setState(() {
//           _period = periods[_tabController.index];
//           _selectedTime = null;
//           _timeOffset = 0;
//         });
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   List<TrafficData> get _currentData {
//     switch (_period) {
//       case 'today':
//         return todayData;
//       case 'week':
//         return weekData;
//       case 'month':
//         return monthData;
//       default:
//         return todayData;
//     }
//   }
//
//   int get _totalData => _currentData.fold(0, (s, d) => s + d.data);
//
//   int get _totalTime => _currentData.fold(0, (s, d) => s + d.duration);
//
//   int get _divisor =>
//       _period == 'today'
//           ? 1
//           : _period == 'week'
//           ? 7
//           : 30;
//
//   int get _avgData => _totalData ~/ _divisor;
//
//   int get _avgTime => _totalTime ~/ _divisor;
//
//   String get _periodLabel {
//     if (_timeOffset == 0) {
//       if (_period == 'today') return 'Today';
//       if (_period == 'week') return 'This Week';
//       return 'This Month';
//     }
//     final abs = _timeOffset.abs();
//     if (_period == 'today') return abs == 1 ? 'Yesterday' : '$abs days ago';
//     if (_period == 'week') return abs == 1 ? 'Last Week' : '$abs weeks ago';
//     return abs == 1 ? 'Last Month' : '$abs months ago';
//   }
//
//   List<TrafficData> get _activityData {
//     if (_selectedTime != null) {
//       final match = _currentData.where((d) => d.time == _selectedTime).toList();
//       return match.isNotEmpty ? match : [];
//     }
//     return _currentData;
//   }
//
//   int get _maxData => _currentData.fold(0, (m, d) => d.data > m ? d.data : m);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: FutureWifiTheme.bgDark,
//       body: NestedScrollView(
//         headerSliverBuilder:
//             (context, innerBoxIsScrolled) => [_buildAppBar(innerBoxIsScrolled)],
//         body: ListView(
//           padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
//           children: [
//             const SizedBox(height: 16),
//             _buildStatsRow(),
//             const SizedBox(height: 20),
//             _buildChartCard(),
//             const SizedBox(height: 20),
//             _buildActivityTimeline(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // ── APP BAR ──────────────────────────────────────────────────────────────
//
//   Widget _buildAppBar(bool innerBoxIsScrolled) {
//     return SliverAppBar(
//       expandedHeight: 160,
//       floating: false,
//       pinned: true,
//       backgroundColor: FutureWifiTheme.bgDark,
//       elevation: 0,
//       // Back arrow
//       leading: IconButton(
//         icon: const Icon(
//           Icons.arrow_back_ios_new_rounded,
//           color: FutureWifiTheme.textPrimary,
//           size: 20,
//         ),
//         onPressed: () => Navigator.of(context).pop(),
//       ),
//       // ── "Future WiFi" title (matches other screens exactly) ──
//       title: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             Icons.wifi_rounded,
//             color: FutureWifiTheme.signatureGreen,
//             size: 28,
//           ),
//           const SizedBox(width: 8),
//           const Text(
//             'Future WiFi',
//             style: TextStyle(
//               color: FutureWifiTheme.textPrimary,
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//       flexibleSpace: FlexibleSpaceBar(
//         collapseMode: CollapseMode.pin,
//         background: Container(
//           color: FutureWifiTheme.bgDark,
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // ── Device info card ──
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 14,
//                       vertical: 12,
//                     ),
//                     decoration: BoxDecoration(
//                       color: FutureWifiTheme.bgCard,
//                       borderRadius: BorderRadius.circular(16),
//                       border: Border.all(color: FutureWifiTheme.border),
//                     ),
//                     child: Row(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             color: FutureWifiTheme.signatureGreen.withOpacity(
//                               0.15,
//                             ),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Icon(
//                             Icons.devices_rounded,
//                             color: FutureWifiTheme.signatureGreen,
//                             size: 22,
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 widget.hostname ?? 'Device',
//                                 style: const TextStyle(
//                                   color: FutureWifiTheme.textPrimary,
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                               Text(
//                                 widget.ip != null
//                                     ? 'IP: ${widget.ip}'
//                                     : 'Traffic History',
//                                 style: const TextStyle(
//                                   color: FutureWifiTheme.textSecondary,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         // Active badge
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 10,
//                             vertical: 5,
//                           ),
//                           decoration: BoxDecoration(
//                             color: FutureWifiTheme.signatureGreen.withOpacity(
//                               0.15,
//                             ),
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(
//                               color: FutureWifiTheme.signatureGreen.withOpacity(
//                                 0.4,
//                               ),
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Container(
//                                 width: 7,
//                                 height: 7,
//                                 decoration: const BoxDecoration(
//                                   color: FutureWifiTheme.signatureGreen,
//                                   shape: BoxShape.circle,
//                                 ),
//                               ),
//                               const SizedBox(width: 5),
//                               const Text(
//                                 'Active',
//                                 style: TextStyle(
//                                   color: FutureWifiTheme.signatureGreen,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   // ── Tab bar ──
//                   Container(
//                     height: 32,
//                     decoration: BoxDecoration(
//                       color: FutureWifiTheme.bgCard,
//                       borderRadius: BorderRadius.circular(14),
//                       border: Border.all(color: FutureWifiTheme.border),
//                     ),
//                     child: TabBar(
//                       controller: _tabController,
//                       labelColor: Colors.black,
//                       unselectedLabelColor: FutureWifiTheme.textSecondary,
//                       indicator: BoxDecoration(
//                         color: FutureWifiTheme.signatureGreen,
//                         borderRadius: BorderRadius.circular(12),
//                         boxShadow: [
//                           BoxShadow(
//                             color: FutureWifiTheme.signatureGreen.withOpacity(
//                               0.4,
//                             ),
//                             blurRadius: 10,
//                           ),
//                         ],
//                       ),
//                       indicatorSize: TabBarIndicatorSize.tab,
//                       dividerColor: Colors.transparent,
//                       labelStyle: const TextStyle(
//                         fontSize: 13,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       unselectedLabelStyle: const TextStyle(
//                         fontSize: 13,
//                         fontWeight: FontWeight.w500,
//                       ),
//                       tabs: const [
//                         Tab(text: 'Today'),
//                         Tab(text: 'Week'),
//                         Tab(text: 'Month'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   // ── STATS ROW ─────────────────────────────────────────────────────────────
//
//   Widget _buildStatsRow() {
//     return Row(
//       children: [
//         Expanded(
//           child: _buildStatCard(
//             icon: Icons.storage_rounded,
//             label: 'Total Data',
//             value: formatData(_totalData),
//             sub: 'Avg: ${formatData(_avgData)}/day',
//             gradient: FutureWifiTheme.accentGradient,
//             glowColor: FutureWifiTheme.signatureGreen,
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _buildStatCard(
//             icon: Icons.schedule_rounded,
//             label: 'Total Time',
//             value: formatTime(_totalTime),
//             sub: 'Avg: ${formatTime(_avgTime)}/day',
//             gradient: FutureWifiTheme.cyanGradient,
//             glowColor: FutureWifiTheme.accentCyan,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildStatCard({
//     required IconData icon,
//     required String label,
//     required String value,
//     required String sub,
//     required LinearGradient gradient,
//     required Color glowColor,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: FutureWifiTheme.bgCard,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: FutureWifiTheme.border),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               gradient: gradient,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: glowColor.withOpacity(0.35),
//                   blurRadius: 10,
//                   offset: const Offset(0, 3),
//                 ),
//               ],
//             ),
//             child: Icon(icon, color: Colors.white, size: 18),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             label,
//             style: const TextStyle(
//               color: FutureWifiTheme.textSecondary,
//               fontSize: 12,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             value,
//             style: const TextStyle(
//               color: FutureWifiTheme.textPrimary,
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           const SizedBox(height: 2),
//           Text(
//             sub,
//             style: const TextStyle(
//               color: FutureWifiTheme.textMuted,
//               fontSize: 11,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // ── CHART CARD ────────────────────────────────────────────────────────────
//
//   Widget _buildChartCard() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: FutureWifiTheme.cardDecoration,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Header
//           Row(
//             children: [
//               ShaderMask(
//                 shaderCallback:
//                     (bounds) =>
//                         FutureWifiTheme.accentGradient.createShader(bounds),
//                 child: const Icon(
//                   Icons.trending_up_rounded,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//               ),
//               const SizedBox(width: 8),
//               const Text(
//                 'Data Usage',
//                 style: TextStyle(
//                   color: FutureWifiTheme.textPrimary,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               if (_selectedTime != null) ...[
//                 const Spacer(),
//                 GestureDetector(
//                   onTap: () => setState(() => _selectedTime = null),
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 10,
//                       vertical: 4,
//                     ),
//                     decoration: BoxDecoration(
//                       color: FutureWifiTheme.signatureGreen.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: FutureWifiTheme.signatureGreen.withOpacity(0.4),
//                       ),
//                     ),
//                     child: const Text(
//                       'View All',
//                       style: TextStyle(
//                         color: FutureWifiTheme.signatureGreen,
//                         fontSize: 11,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ],
//           ),
//           const SizedBox(height: 20),
//           // Bar Chart
//           SizedBox(
//             height: 180,
//             child: BarChart(
//               BarChartData(
//                 alignment: BarChartAlignment.spaceAround,
//                 maxY: (_maxData * 1.2).toDouble(),
//                 barTouchData: BarTouchData(
//                   touchTooltipData: BarTouchTooltipData(
//                     tooltipBorderRadius: BorderRadius.circular(10),
//                     getTooltipColor: (_) => FutureWifiTheme.bgCardAlt,
//                     getTooltipItem: (group, groupIndex, rod, rodIndex) {
//                       final item = _currentData[groupIndex];
//                       return BarTooltipItem(
//                         '${item.time}\n${formatData(item.data)}',
//                         const TextStyle(
//                           color: FutureWifiTheme.textPrimary,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 12,
//                         ),
//                       );
//                     },
//                   ),
//                   touchCallback: (event, response) {
//                     if (event is FlTapUpEvent && response?.spot != null) {
//                       final idx = response!.spot!.touchedBarGroupIndex;
//                       final tappedTime = _currentData[idx].time;
//                       setState(() {
//                         _selectedTime =
//                             _selectedTime == tappedTime ? null : tappedTime;
//                       });
//                     }
//                   },
//                 ),
//                 titlesData: FlTitlesData(
//                   show: true,
//                   bottomTitles: AxisTitles(
//                     sideTitles: SideTitles(
//                       showTitles: true,
//                       getTitlesWidget: (value, meta) {
//                         final idx = value.toInt();
//                         if (idx < 0 || idx >= _currentData.length) {
//                           return const SizedBox();
//                         }
//                         return Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: Text(
//                             _currentData[idx].time,
//                             style: const TextStyle(
//                               color: FutureWifiTheme.textSecondary,
//                               fontSize: 10,
//                             ),
//                           ),
//                         );
//                       },
//                       reservedSize: 28,
//                     ),
//                   ),
//                   leftTitles: AxisTitles(
//                     sideTitles: SideTitles(
//                       showTitles: true,
//                       reservedSize: 44,
//                       getTitlesWidget: (value, meta) {
//                         if (value == 0) return const SizedBox();
//                         return Text(
//                           value >= 1024
//                               ? '${(value / 1024).toStringAsFixed(1)}G'
//                               : '${value.toInt()}M',
//                           style: const TextStyle(
//                             color: FutureWifiTheme.textMuted,
//                             fontSize: 10,
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                   topTitles: const AxisTitles(
//                     sideTitles: SideTitles(showTitles: false),
//                   ),
//                   rightTitles: const AxisTitles(
//                     sideTitles: SideTitles(showTitles: false),
//                   ),
//                 ),
//                 gridData: FlGridData(
//                   show: true,
//                   drawVerticalLine: false,
//                   getDrawingHorizontalLine:
//                       (_) => FlLine(
//                         color: FutureWifiTheme.border,
//                         strokeWidth: 1,
//                         dashArray: [4, 4],
//                       ),
//                 ),
//                 borderData: FlBorderData(show: false),
//                 barGroups: List.generate(_currentData.length, (i) {
//                   final item = _currentData[i];
//                   final isSelected = _selectedTime == item.time;
//                   final hasSelection = _selectedTime != null;
//
//                   Color barColor;
//                   if (isSelected) {
//                     barColor = FutureWifiTheme.accentGreen;
//                   } else if (hasSelection) {
//                     barColor = FutureWifiTheme.textMuted;
//                   } else {
//                     barColor =
//                         FutureWifiTheme.barColors[i %
//                             FutureWifiTheme.barColors.length];
//                   }
//
//                   return BarChartGroupData(
//                     x: i,
//                     barRods: [
//                       BarChartRodData(
//                         toY: item.data.toDouble(),
//                         width: _period == 'today' ? 18 : 22,
//                         borderRadius: const BorderRadius.vertical(
//                           top: Radius.circular(8),
//                         ),
//                         gradient: LinearGradient(
//                           colors:
//                               isSelected
//                                   ? [
//                                     FutureWifiTheme.accentGreen,
//                                     FutureWifiTheme.accentGreen.withOpacity(
//                                       0.5,
//                                     ),
//                                   ]
//                                   : hasSelection
//                                   ? [
//                                     FutureWifiTheme.textMuted,
//                                     FutureWifiTheme.textMuted.withOpacity(0.3),
//                                   ]
//                                   : [barColor, barColor.withOpacity(0.4)],
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           // Navigation row
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _navButton(
//                 label: 'Previous',
//                 icon: Icons.chevron_left_rounded,
//                 iconFirst: true,
//                 onTap:
//                     () => setState(() {
//                       _timeOffset--;
//                       _selectedTime = null;
//                     }),
//               ),
//               Text(
//                 _periodLabel,
//                 style: const TextStyle(
//                   color: FutureWifiTheme.textPrimary,
//                   fontSize: 13,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               _navButton(
//                 label: 'Next',
//                 icon: Icons.chevron_right_rounded,
//                 iconFirst: false,
//                 onTap:
//                     _timeOffset < 0
//                         ? () => setState(() {
//                           _timeOffset++;
//                           _selectedTime = null;
//                         })
//                         : null,
//               ),
//             ],
//           ),
//           if (_selectedTime != null)
//             Padding(
//               padding: const EdgeInsets.only(top: 8),
//               child: Center(
//                 child: Text(
//                   'Showing $_selectedTime\'s activity',
//                   style: const TextStyle(
//                     color: FutureWifiTheme.textMuted,
//                     fontSize: 11,
//                   ),
//                 ),
//               ),
//             )
//           else
//             const Padding(
//               padding: EdgeInsets.only(top: 8),
//               child: Center(
//                 child: Text(
//                   'Tap a bar to view details',
//                   style: TextStyle(
//                     color: FutureWifiTheme.textMuted,
//                     fontSize: 11,
//                   ),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
//
//   Widget _navButton({
//     required String label,
//     required IconData icon,
//     required bool iconFirst,
//     required VoidCallback? onTap,
//   }) {
//     final enabled = onTap != null;
//     final color =
//         enabled ? FutureWifiTheme.signatureGreen : FutureWifiTheme.textMuted;
//
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
//         decoration: BoxDecoration(
//           color:
//               enabled
//                   ? FutureWifiTheme.signatureGreen.withOpacity(0.12)
//                   : FutureWifiTheme.bgCardAlt,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             color:
//                 enabled
//                     ? FutureWifiTheme.signatureGreen.withOpacity(0.3)
//                     : FutureWifiTheme.border,
//           ),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children:
//               iconFirst
//                   ? [
//                     Icon(icon, color: color, size: 16),
//                     const SizedBox(width: 4),
//                     Text(
//                       label,
//                       style: TextStyle(
//                         color: color,
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ]
//                   : [
//                     Text(
//                       label,
//                       style: TextStyle(
//                         color: color,
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(width: 4),
//                     Icon(icon, color: color, size: 16),
//                   ],
//         ),
//       ),
//     );
//   }
//
//   // ── ACTIVITY TIMELINE ─────────────────────────────────────────────────────
//
//   Widget _buildActivityTimeline() {
//     final displayData = _activityData;
//     final maxVal = displayData.fold(0, (m, d) => d.data > m ? d.data : m);
//
//     return Container(
//       decoration: FutureWifiTheme.cardDecoration,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Header
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Row(
//               children: [
//                 ShaderMask(
//                   shaderCallback:
//                       (bounds) =>
//                           FutureWifiTheme.accentGradient.createShader(bounds),
//                   child: const Icon(
//                     Icons.calendar_today_rounded,
//                     color: Colors.white,
//                     size: 18,
//                   ),
//                 ),
//                 const SizedBox(width: 8),
//                 const Text(
//                   'Activity Timeline',
//                   style: TextStyle(
//                     color: FutureWifiTheme.textPrimary,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 if (_selectedTime != null) ...[
//                   const Spacer(),
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 8,
//                       vertical: 3,
//                     ),
//                     decoration: BoxDecoration(
//                       color: FutureWifiTheme.accentGreen.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: FutureWifiTheme.accentGreen.withOpacity(0.4),
//                       ),
//                     ),
//                     child: Text(
//                       _selectedTime!,
//                       style: const TextStyle(
//                         color: FutureWifiTheme.accentGreen,
//                         fontSize: 11,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ],
//               ],
//             ),
//           ),
//           const Divider(height: 1, color: FutureWifiTheme.border),
//           // List
//           ...displayData.asMap().entries.map((entry) {
//             final i = entry.key;
//             final item = entry.value;
//             final originalIndex = _currentData.indexWhere(
//               (d) => d.time == item.time,
//             );
//             final barColor =
//                 FutureWifiTheme.barColors[originalIndex %
//                     FutureWifiTheme.barColors.length];
//             final isSelected = _selectedTime == item.time;
//             final pct = maxVal > 0 ? item.data / maxVal : 0.0;
//
//             return _TimelineSlot(
//               item: item,
//               barColor: isSelected ? FutureWifiTheme.accentGreen : barColor,
//               progressPercent: pct,
//               isLast: i == displayData.length - 1,
//               autoExpand: _selectedTime != null,
//               formatData: formatData,
//               formatTime: formatTime,
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }
//
// // ─── TIMELINE SLOT ───────────────────────────────────────────────────────────
//
// class _TimelineSlot extends StatefulWidget {
//   final TrafficData item;
//   final Color barColor;
//   final double progressPercent;
//   final bool isLast;
//   final bool autoExpand;
//   final String Function(int) formatData;
//   final String Function(int) formatTime;
//
//   const _TimelineSlot({
//     required this.item,
//     required this.barColor,
//     required this.progressPercent,
//     required this.isLast,
//     required this.autoExpand,
//     required this.formatData,
//     required this.formatTime,
//   });
//
//   @override
//   State<_TimelineSlot> createState() => _TimelineSlotState();
// }
//
// class _TimelineSlotState extends State<_TimelineSlot>
//     with SingleTickerProviderStateMixin {
//   bool _expanded = false;
//   late AnimationController _controller;
//   late Animation<double> _expandAnim;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 280),
//     );
//     _expandAnim = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
//     if (widget.autoExpand) _controller.forward();
//   }
//
//   @override
//   void didUpdateWidget(_TimelineSlot old) {
//     super.didUpdateWidget(old);
//     if (widget.autoExpand && !old.autoExpand) {
//       _expanded = false;
//       _controller.forward();
//     } else if (!widget.autoExpand && old.autoExpand) {
//       _controller.reverse();
//     }
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void _toggle() {
//     if (widget.autoExpand) return;
//     setState(() => _expanded = !_expanded);
//     _expanded ? _controller.forward() : _controller.reverse();
//   }
//
//   bool get _isOpen => widget.autoExpand || _expanded;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         InkWell(
//           onTap: widget.item.activities.isNotEmpty ? _toggle : null,
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
//             decoration: BoxDecoration(
//               border:
//                   !widget.isLast
//                       ? const Border(
//                         bottom: BorderSide(
//                           color: FutureWifiTheme.border,
//                           width: 0.5,
//                         ),
//                       )
//                       : null,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       widget.item.time,
//                       style: const TextStyle(
//                         color: FutureWifiTheme.textPrimary,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 14,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           widget.formatTime(widget.item.duration),
//                           style: const TextStyle(
//                             color: FutureWifiTheme.textSecondary,
//                             fontSize: 12,
//                           ),
//                         ),
//                         if (widget.item.activities.isNotEmpty &&
//                             !widget.autoExpand) ...[
//                           const SizedBox(width: 6),
//                           AnimatedRotation(
//                             turns: _isOpen ? 0.5 : 0,
//                             duration: const Duration(milliseconds: 280),
//                             child: const Icon(
//                               Icons.keyboard_arrow_down_rounded,
//                               color: FutureWifiTheme.textMuted,
//                               size: 18,
//                             ),
//                           ),
//                         ],
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           width: 10,
//                           height: 10,
//                           decoration: BoxDecoration(
//                             color: widget.barColor,
//                             shape: BoxShape.circle,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: widget.barColor.withOpacity(0.5),
//                                 blurRadius: 6,
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 8),
//                         Text(
//                           widget.item.activities.isEmpty
//                               ? 'Data Used'
//                               : '${widget.item.activities.length} ${widget.item.activities.length == 1 ? 'activity' : 'activities'}',
//                           style: const TextStyle(
//                             color: FutureWifiTheme.textSecondary,
//                             fontSize: 12,
//                           ),
//                         ),
//                       ],
//                     ),
//                     ShaderMask(
//                       shaderCallback:
//                           (bounds) => FutureWifiTheme.accentGradient
//                               .createShader(bounds),
//                       child: Text(
//                         widget.formatData(widget.item.data),
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w700,
//                           fontSize: 14,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 // Progress bar
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(4),
//                   child: LinearProgressIndicator(
//                     value: widget.progressPercent,
//                     backgroundColor: FutureWifiTheme.bgCardAlt,
//                     valueColor: AlwaysStoppedAnimation<Color>(widget.barColor),
//                     minHeight: 4,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         // Expanded activities
//         SizeTransition(
//           sizeFactor: _expandAnim,
//           child: Container(
//             color: FutureWifiTheme.bgDark,
//             padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
//             child: Column(
//               children:
//                   widget.item.activities.map((activity) {
//                     final pctOfPeriod =
//                         widget.item.data > 0
//                             ? (activity.dataUsed / widget.item.data * 100)
//                                 .toStringAsFixed(0)
//                             : '0';
//                     return Container(
//                       margin: const EdgeInsets.only(top: 8),
//                       padding: const EdgeInsets.all(14),
//                       decoration: BoxDecoration(
//                         color: FutureWifiTheme.bgCard,
//                         borderRadius: BorderRadius.circular(16),
//                         border: Border.all(color: FutureWifiTheme.border),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 width: 42,
//                                 height: 42,
//                                 decoration: BoxDecoration(
//                                   color: FutureWifiTheme.bgCardAlt,
//                                   borderRadius: BorderRadius.circular(14),
//                                   border: Border.all(
//                                     color: FutureWifiTheme.border,
//                                   ),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     activity.icon,
//                                     style: const TextStyle(fontSize: 20),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 12),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Text(
//                                           activity.name,
//                                           style: const TextStyle(
//                                             color: FutureWifiTheme.textPrimary,
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 13,
//                                           ),
//                                         ),
//                                         const SizedBox(width: 6),
//                                         Icon(
//                                           activity.type == 'app'
//                                               ? Icons.smartphone_rounded
//                                               : Icons.language_rounded,
//                                           color:
//                                               activity.type == 'app'
//                                                   ? FutureWifiTheme
//                                                       .signatureGreen
//                                                   : FutureWifiTheme.accentGreen,
//                                           size: 13,
//                                         ),
//                                       ],
//                                     ),
//                                     Text(
//                                       activity.category,
//                                       style: const TextStyle(
//                                         color: FutureWifiTheme.textMuted,
//                                         fontSize: 11,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 12),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: _activityMetric(
//                                   icon: Icons.schedule_rounded,
//                                   label: 'Time',
//                                   value: widget.formatTime(activity.duration),
//                                   sub:
//                                       '${activity.entryTime} → ${activity.exitTime}',
//                                   color: FutureWifiTheme.signatureGreen,
//                                 ),
//                               ),
//                               const SizedBox(width: 8),
//                               Expanded(
//                                 child: _activityMetric(
//                                   icon: Icons.storage_rounded,
//                                   label: 'Data',
//                                   value: widget.formatData(activity.dataUsed),
//                                   sub: '$pctOfPeriod% of period',
//                                   color: FutureWifiTheme.accentPurple,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     );
//                   }).toList(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _activityMetric({
//     required IconData icon,
//     required String label,
//     required String value,
//     required String sub,
//     required Color color,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.08),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: color.withOpacity(0.2)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: color, size: 12),
//               const SizedBox(width: 4),
//               Text(
//                 label,
//                 style: TextStyle(
//                   color: color,
//                   fontSize: 11,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 4),
//           Text(
//             value,
//             style: const TextStyle(
//               color: FutureWifiTheme.textPrimary,
//               fontSize: 13,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           const SizedBox(height: 2),
//           Text(
//             sub,
//             style: const TextStyle(
//               color: FutureWifiTheme.textMuted,
//               fontSize: 10,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

// ─── DATA MODELS ────────────────────────────────────────────────────────────

class ActivityDetail {
  final String id;
  final String name;
  final String type; // 'app' | 'website'
  final String icon;
  final String entryTime;
  final String exitTime;
  final int duration; // minutes
  final int dataUsed; // MB
  final String category;

  const ActivityDetail({
    required this.id,
    required this.name,
    required this.type,
    required this.icon,
    required this.entryTime,
    required this.exitTime,
    required this.duration,
    required this.dataUsed,
    required this.category,
  });
}

class TrafficData {
  final String time;
  final int data;
  final int duration;
  final List<ActivityDetail> activities;

  const TrafficData({
    required this.time,
    required this.data,
    required this.duration,
    required this.activities,
  });
}

// ─── SAMPLE DATA ─────────────────────────────────────────────────────────────

final List<TrafficData> todayData = [
  TrafficData(
    time: '00:00',
    data: 12,
    duration: 15,
    activities: [
      ActivityDetail(
        id: '1',
        name: 'Instagram',
        type: 'app',
        icon: '📸',
        entryTime: '00:15',
        exitTime: '00:30',
        duration: 15,
        dataUsed: 12,
        category: 'Social Media',
      ),
    ],
  ),
  TrafficData(
    time: '03:00',
    data: 5,
    duration: 8,
    activities: [
      ActivityDetail(
        id: '2',
        name: 'Gmail',
        type: 'app',
        icon: '📧',
        entryTime: '03:22',
        exitTime: '03:30',
        duration: 8,
        dataUsed: 5,
        category: 'Email',
      ),
    ],
  ),
  TrafficData(
    time: '06:00',
    data: 8,
    duration: 12,
    activities: [
      ActivityDetail(
        id: '3',
        name: 'Weather',
        type: 'app',
        icon: '🌤️',
        entryTime: '06:45',
        exitTime: '06:48',
        duration: 3,
        dataUsed: 2,
        category: 'Utilities',
      ),
      ActivityDetail(
        id: '4',
        name: 'BBC News',
        type: 'website',
        icon: '📰',
        entryTime: '06:50',
        exitTime: '06:59',
        duration: 9,
        dataUsed: 6,
        category: 'News',
      ),
    ],
  ),
  TrafficData(
    time: '09:00',
    data: 145,
    duration: 95,
    activities: [
      ActivityDetail(
        id: '5',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: '09:15',
        exitTime: '09:45',
        duration: 30,
        dataUsed: 85,
        category: 'Video',
      ),
      ActivityDetail(
        id: '6',
        name: 'Spotify',
        type: 'app',
        icon: '🎵',
        entryTime: '09:50',
        exitTime: '10:30',
        duration: 40,
        dataUsed: 35,
        category: 'Music',
      ),
      ActivityDetail(
        id: '7',
        name: 'Twitter',
        type: 'app',
        icon: '🐦',
        entryTime: '10:35',
        exitTime: '10:50',
        duration: 15,
        dataUsed: 18,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: '8',
        name: 'Reddit',
        type: 'website',
        icon: '🔶',
        entryTime: '10:52',
        exitTime: '11:02',
        duration: 10,
        dataUsed: 7,
        category: 'Social Media',
      ),
    ],
  ),
  TrafficData(
    time: '12:00',
    data: 89,
    duration: 65,
    activities: [
      ActivityDetail(
        id: '9',
        name: 'Netflix',
        type: 'app',
        icon: '🎬',
        entryTime: '12:30',
        exitTime: '13:05',
        duration: 35,
        dataUsed: 65,
        category: 'Video',
      ),
      ActivityDetail(
        id: '10',
        name: 'WhatsApp',
        type: 'app',
        icon: '💬',
        entryTime: '13:10',
        exitTime: '13:35',
        duration: 25,
        dataUsed: 18,
        category: 'Messaging',
      ),
      ActivityDetail(
        id: '11',
        name: 'Amazon',
        type: 'website',
        icon: '🛒',
        entryTime: '13:38',
        exitTime: '13:43',
        duration: 5,
        dataUsed: 6,
        category: 'Shopping',
      ),
    ],
  ),
  TrafficData(
    time: '15:00',
    data: 234,
    duration: 145,
    activities: [
      ActivityDetail(
        id: '12',
        name: 'TikTok',
        type: 'app',
        icon: '🎭',
        entryTime: '15:20',
        exitTime: '16:25',
        duration: 65,
        dataUsed: 125,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: '13',
        name: 'Instagram',
        type: 'app',
        icon: '📸',
        entryTime: '16:30',
        exitTime: '17:10',
        duration: 40,
        dataUsed: 68,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: '14',
        name: 'Facebook',
        type: 'app',
        icon: '👥',
        entryTime: '17:15',
        exitTime: '17:45',
        duration: 30,
        dataUsed: 32,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: '15',
        name: 'Slack',
        type: 'app',
        icon: '💼',
        entryTime: '17:50',
        exitTime: '18:00',
        duration: 10,
        dataUsed: 9,
        category: 'Work',
      ),
    ],
  ),
  TrafficData(
    time: '18:00',
    data: 178,
    duration: 120,
    activities: [
      ActivityDetail(
        id: '16',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: '18:30',
        exitTime: '19:25',
        duration: 55,
        dataUsed: 98,
        category: 'Video',
      ),
      ActivityDetail(
        id: '17',
        name: 'Google Maps',
        type: 'app',
        icon: '🗺️',
        entryTime: '19:30',
        exitTime: '19:50',
        duration: 20,
        dataUsed: 15,
        category: 'Navigation',
      ),
      ActivityDetail(
        id: '18',
        name: 'Uber Eats',
        type: 'app',
        icon: '🍔',
        entryTime: '20:00',
        exitTime: '20:10',
        duration: 10,
        dataUsed: 8,
        category: 'Food',
      ),
      ActivityDetail(
        id: '19',
        name: 'Medium.com',
        type: 'website',
        icon: '📝',
        entryTime: '20:15',
        exitTime: '20:45',
        duration: 30,
        dataUsed: 22,
        category: 'Reading',
      ),
    ],
  ),
  TrafficData(
    time: '21:00',
    data: 156,
    duration: 98,
    activities: [
      ActivityDetail(
        id: '21',
        name: 'Twitch',
        type: 'app',
        icon: '🎮',
        entryTime: '21:15',
        exitTime: '22:05',
        duration: 50,
        dataUsed: 89,
        category: 'Gaming',
      ),
      ActivityDetail(
        id: '22',
        name: 'Discord',
        type: 'app',
        icon: '💬',
        entryTime: '22:10',
        exitTime: '22:35',
        duration: 25,
        dataUsed: 28,
        category: 'Communication',
      ),
      ActivityDetail(
        id: '23',
        name: 'Twitter',
        type: 'app',
        icon: '🐦',
        entryTime: '22:40',
        exitTime: '22:58',
        duration: 18,
        dataUsed: 24,
        category: 'Social Media',
      ),
    ],
  ),
];

final List<TrafficData> weekData = [
  TrafficData(
    time: 'Mon',
    data: 523,
    duration: 385,
    activities: [
      ActivityDetail(
        id: 'm1',
        name: 'Slack',
        type: 'app',
        icon: '💼',
        entryTime: '08:00',
        exitTime: '09:30',
        duration: 90,
        dataUsed: 45,
        category: 'Work',
      ),
      ActivityDetail(
        id: 'm2',
        name: 'Zoom',
        type: 'app',
        icon: '📹',
        entryTime: '10:00',
        exitTime: '11:30',
        duration: 90,
        dataUsed: 120,
        category: 'Video Call',
      ),
      ActivityDetail(
        id: 'm3',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: '14:00',
        exitTime: '15:30',
        duration: 90,
        dataUsed: 185,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'm4',
        name: 'Spotify',
        type: 'app',
        icon: '🎵',
        entryTime: '20:00',
        exitTime: '21:15',
        duration: 75,
        dataUsed: 82,
        category: 'Music',
      ),
    ],
  ),
  TrafficData(
    time: 'Tue',
    data: 678,
    duration: 421,
    activities: [
      ActivityDetail(
        id: 't1',
        name: 'Instagram',
        type: 'app',
        icon: '📸',
        entryTime: '07:30',
        exitTime: '08:15',
        duration: 45,
        dataUsed: 56,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: 't2',
        name: 'Netflix',
        type: 'app',
        icon: '🎬',
        entryTime: '09:00',
        exitTime: '10:45',
        duration: 105,
        dataUsed: 245,
        category: 'Video',
      ),
      ActivityDetail(
        id: 't3',
        name: 'TikTok',
        type: 'app',
        icon: '🎭',
        entryTime: '16:00',
        exitTime: '17:25',
        duration: 85,
        dataUsed: 178,
        category: 'Social Media',
      ),
    ],
  ),
  TrafficData(
    time: 'Wed',
    data: 445,
    duration: 312,
    activities: [
      ActivityDetail(
        id: 'w1',
        name: 'Google Drive',
        type: 'app',
        icon: '📁',
        entryTime: '10:00',
        exitTime: '11:30',
        duration: 90,
        dataUsed: 125,
        category: 'Cloud Storage',
      ),
      ActivityDetail(
        id: 'w2',
        name: 'Spotify',
        type: 'app',
        icon: '🎵',
        entryTime: '12:00',
        exitTime: '13:20',
        duration: 80,
        dataUsed: 68,
        category: 'Music',
      ),
      ActivityDetail(
        id: 'w3',
        name: 'Facebook',
        type: 'app',
        icon: '👥',
        entryTime: '15:00',
        exitTime: '16:15',
        duration: 75,
        dataUsed: 112,
        category: 'Social Media',
      ),
    ],
  ),
  TrafficData(
    time: 'Thu',
    data: 789,
    duration: 502,
    activities: [
      ActivityDetail(
        id: 'th1',
        name: 'Teams',
        type: 'app',
        icon: '💼',
        entryTime: '09:00',
        exitTime: '10:30',
        duration: 90,
        dataUsed: 156,
        category: 'Work',
      ),
      ActivityDetail(
        id: 'th2',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: '11:00',
        exitTime: '12:45',
        duration: 105,
        dataUsed: 234,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'th3',
        name: 'Twitch',
        type: 'app',
        icon: '🎮',
        entryTime: '15:30',
        exitTime: '17:00',
        duration: 90,
        dataUsed: 189,
        category: 'Gaming',
      ),
    ],
  ),
  TrafficData(
    time: 'Fri',
    data: 891,
    duration: 567,
    activities: [
      ActivityDetail(
        id: 'f1',
        name: 'Slack',
        type: 'app',
        icon: '💼',
        entryTime: '08:00',
        exitTime: '09:45',
        duration: 105,
        dataUsed: 67,
        category: 'Work',
      ),
      ActivityDetail(
        id: 'f2',
        name: 'Netflix',
        type: 'app',
        icon: '🎬',
        entryTime: '12:00',
        exitTime: '14:30',
        duration: 150,
        dataUsed: 345,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'f3',
        name: 'TikTok',
        type: 'app',
        icon: '🎭',
        entryTime: '19:00',
        exitTime: '20:45',
        duration: 105,
        dataUsed: 198,
        category: 'Social Media',
      ),
    ],
  ),
  TrafficData(
    time: 'Sat',
    data: 1234,
    duration: 723,
    activities: [
      ActivityDetail(
        id: 's1',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: '10:00',
        exitTime: '12:30',
        duration: 150,
        dataUsed: 298,
        category: 'Video',
      ),
      ActivityDetail(
        id: 's2',
        name: 'Instagram',
        type: 'app',
        icon: '📸',
        entryTime: '13:00',
        exitTime: '14:45',
        duration: 105,
        dataUsed: 145,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: 's3',
        name: 'Netflix',
        type: 'app',
        icon: '🎬',
        entryTime: '16:00',
        exitTime: '18:30',
        duration: 150,
        dataUsed: 356,
        category: 'Video',
      ),
      ActivityDetail(
        id: 's4',
        name: 'Discord',
        type: 'app',
        icon: '💬',
        entryTime: '21:30',
        exitTime: '23:43',
        duration: 133,
        dataUsed: 167,
        category: 'Communication',
      ),
    ],
  ),
  TrafficData(
    time: 'Sun',
    data: 1067,
    duration: 645,
    activities: [
      ActivityDetail(
        id: 'su1',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: '11:00',
        exitTime: '13:15',
        duration: 135,
        dataUsed: 287,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'su2',
        name: 'Instagram',
        type: 'app',
        icon: '📸',
        entryTime: '17:00',
        exitTime: '18:15',
        duration: 75,
        dataUsed: 98,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: 'su3',
        name: 'HBO Max',
        type: 'app',
        icon: '🎬',
        entryTime: '19:00',
        exitTime: '21:30',
        duration: 150,
        dataUsed: 298,
        category: 'Video',
      ),
    ],
  ),
];

final List<TrafficData> monthData = [
  TrafficData(
    time: 'Wk 1',
    data: 4521,
    duration: 2456,
    activities: [
      ActivityDetail(
        id: 'wk1-1',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 456,
        dataUsed: 1234,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'wk1-2',
        name: 'Instagram',
        type: 'app',
        icon: '📸',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 389,
        dataUsed: 876,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: 'wk1-3',
        name: 'Netflix',
        type: 'app',
        icon: '🎬',
        entryTime: 'Sat',
        exitTime: 'Sun',
        duration: 345,
        dataUsed: 789,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'wk1-4',
        name: 'WhatsApp',
        type: 'app',
        icon: '💬',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 234,
        dataUsed: 456,
        category: 'Messaging',
      ),
    ],
  ),
  TrafficData(
    time: 'Wk 2',
    data: 5234,
    duration: 2789,
    activities: [
      ActivityDetail(
        id: 'wk2-1',
        name: 'TikTok',
        type: 'app',
        icon: '🎭',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 567,
        dataUsed: 1456,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: 'wk2-2',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 498,
        dataUsed: 1123,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'wk2-3',
        name: 'Facebook',
        type: 'app',
        icon: '👥',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 356,
        dataUsed: 678,
        category: 'Social Media',
      ),
    ],
  ),
  TrafficData(
    time: 'Wk 3',
    data: 4987,
    duration: 2634,
    activities: [
      ActivityDetail(
        id: 'wk3-1',
        name: 'Netflix',
        type: 'app',
        icon: '🎬',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 512,
        dataUsed: 1345,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'wk3-2',
        name: 'Instagram',
        type: 'app',
        icon: '📸',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 445,
        dataUsed: 978,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: 'wk3-3',
        name: 'Spotify',
        type: 'app',
        icon: '🎵',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 367,
        dataUsed: 456,
        category: 'Music',
      ),
    ],
  ),
  TrafficData(
    time: 'Wk 4',
    data: 5678,
    duration: 2912,
    activities: [
      ActivityDetail(
        id: 'wk4-1',
        name: 'YouTube',
        type: 'app',
        icon: '📺',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 589,
        dataUsed: 1567,
        category: 'Video',
      ),
      ActivityDetail(
        id: 'wk4-2',
        name: 'TikTok',
        type: 'app',
        icon: '🎭',
        entryTime: 'Mon',
        exitTime: 'Sun',
        duration: 523,
        dataUsed: 1234,
        category: 'Social Media',
      ),
      ActivityDetail(
        id: 'wk4-3',
        name: 'HBO Max',
        type: 'app',
        icon: '🎬',
        entryTime: 'Sat',
        exitTime: 'Sun',
        duration: 398,
        dataUsed: 923,
        category: 'Video',
      ),
    ],
  ),
];

// ─── THEME ───────────────────────────────────────────────────────────────────

class FutureWifiTheme {
  // Background
  static const Color bgDark = Color(0xFF0A0E1A);
  // static const Color bgDark = Colors.black12;
  static const Color bgCard = Color(0xFF111827);
  // static const Color bgCard = Colors.grey;
  static const Color bgCardAlt = Color(0xFF1A2236);
  // static const Color bgCardAlt = Colors.grey;

  // ── Signature Future WiFi colors ──
  static const Color signatureGreen = Color(0xFFCCFF90);
  static const Color signatureGreenDark = Color(0xFF69F0AE);

  // Accent colors
  static const Color accentBlue = Color(0xFF3B82F6);
  static const Color accentCyan = Color(0xFF06B6D4);
  static const Color accentPurple = Color(0xFF8B5CF6);
  static const Color accentGreen = Color(0xFFCCFF90);

  // Text
  static const Color textPrimary = Color(0xFFE2E8F0);
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color textMuted = Color(0xFF475569);

  // Border
  static const Color border = Color(0xFF1E293B);

  // Bar chart colors — signature green-led palette
  static const List<Color> barColors = [
    Color(0xFF69F0AE), // green
    Color(0xFF00E5FF), // cyan
    Color(0xFF448AFF), // blue
    Color(0xFFAA00FF), // purple
    Color(0xFFFFD740), // amber
    Color(0xFFCCFF90), // lime
    Color(0xFF26C6DA), // teal
  ];

  static LinearGradient get appBarGradient => const LinearGradient(
    colors: [Color(0xFF0A0E1A), Color(0xFF0D1F0D)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient get accentGradient => const LinearGradient(
    colors: [signatureGreen, signatureGreenDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static LinearGradient get cyanGradient => const LinearGradient(
    colors: [accentCyan, signatureGreenDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static BoxDecoration get cardDecoration => BoxDecoration(
    color: bgCard,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: border, width: 1),
  );
}

// ─── HELPERS ─────────────────────────────────────────────────────────────────

String formatData(int mb) {
  if (mb >= 1024) {
    return '${(mb / 1024).toStringAsFixed(2)} GB';
  }
  return '$mb MB';
}

String formatTime(int minutes) {
  final hours = minutes ~/ 60;
  final mins = minutes % 60;
  if (hours > 0) return '${hours}h ${mins}m';
  return '${mins}m';
}

// ─── MAIN SCREEN ─────────────────────────────────────────────────────────────

class TrafficHistoryScreen extends StatefulWidget {
  final String? hostname;
  final String? ip;
  final String? mac;

  const TrafficHistoryScreen({super.key, this.hostname, this.ip, this.mac});

  @override
  State<TrafficHistoryScreen> createState() => _TrafficHistoryScreenState();
}

class _TrafficHistoryScreenState extends State<TrafficHistoryScreen>
    with SingleTickerProviderStateMixin {
  String _period = 'today'; // 'today' | 'week' | 'month'
  String? _selectedTime;
  int _timeOffset = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        final periods = ['today', 'week', 'month'];
        setState(() {
          _period = periods[_tabController.index];
          _selectedTime = null;
          _timeOffset = 0;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<TrafficData> get _currentData {
    switch (_period) {
      case 'today':
        return todayData;
      case 'week':
        return weekData;
      case 'month':
        return monthData;
      default:
        return todayData;
    }
  }

  int get _totalData => _currentData.fold(0, (s, d) => s + d.data);

  int get _totalTime => _currentData.fold(0, (s, d) => s + d.duration);

  int get _divisor =>
      _period == 'today'
          ? 1
          : _period == 'week'
          ? 7
          : 30;

  int get _avgData => _totalData ~/ _divisor;

  int get _avgTime => _totalTime ~/ _divisor;

  String get _periodLabel {
    if (_timeOffset == 0) {
      if (_period == 'today') return 'Today';
      if (_period == 'week') return 'This Week';
      return 'This Month';
    }
    final abs = _timeOffset.abs();
    if (_period == 'today') return abs == 1 ? 'Yesterday' : '$abs days ago';
    if (_period == 'week') return abs == 1 ? 'Last Week' : '$abs weeks ago';
    return abs == 1 ? 'Last Month' : '$abs months ago';
  }

  List<TrafficData> get _activityData {
    if (_selectedTime != null) {
      final match = _currentData.where((d) => d.time == _selectedTime).toList();
      return match.isNotEmpty ? match : [];
    }
    return _currentData;
  }

  int get _maxData => _currentData.fold(0, (m, d) => d.data > m ? d.data : m);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FutureWifiTheme.bgDark,
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [_buildAppBar(innerBoxIsScrolled)],
        body: ListView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
          children: [
            const SizedBox(height: 16),
            _buildStatsRow(),
            const SizedBox(height: 20),
            _buildChartCard(),
            const SizedBox(height: 20),
            _buildActivityTimeline(),
          ],
        ),
      ),
    );
  }

  // ── APP BAR ──────────────────────────────────────────────────────────────

  Widget _buildAppBar(bool innerBoxIsScrolled) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      backgroundColor: FutureWifiTheme.bgDark,
      elevation: 0,
      // Back arrow
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: FutureWifiTheme.textPrimary,
          size: 20,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      // ── "Future WiFi" title (matches other screens exactly) ──
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.wifi_rounded,
            color: FutureWifiTheme.signatureGreen,
            size: 28,
          ),
          const SizedBox(width: 8),
          const Text(
            'Future WiFi',
            style: TextStyle(
              color: FutureWifiTheme.textPrimary,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Container(
          color: FutureWifiTheme.bgDark,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 58, 16, 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Device info card ──
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: FutureWifiTheme.bgCard,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: FutureWifiTheme.border),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: FutureWifiTheme.signatureGreen.withOpacity(
                              0.15,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.devices_rounded,
                            color: FutureWifiTheme.signatureGreen,
                            size: 22,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.hostname ?? 'Device',
                                style: const TextStyle(
                                  color: FutureWifiTheme.textPrimary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                widget.ip != null
                                    ? 'IP: ${widget.ip}'
                                    : 'Traffic History',
                                style: const TextStyle(
                                  color: FutureWifiTheme.textSecondary,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Active badge
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: FutureWifiTheme.signatureGreen.withOpacity(
                              0.15,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: FutureWifiTheme.signatureGreen.withOpacity(
                                0.4,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                decoration: const BoxDecoration(
                                  color: FutureWifiTheme.signatureGreen,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Active',
                                style: TextStyle(
                                  color: FutureWifiTheme.signatureGreen,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  // ── Tab bar ──
                  Container(
                    height: 42,
                    decoration: BoxDecoration(
                      color: FutureWifiTheme.bgCard,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: FutureWifiTheme.border),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: FutureWifiTheme.textSecondary,
                      indicator: BoxDecoration(
                        color: FutureWifiTheme.signatureGreen,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: FutureWifiTheme.signatureGreen.withOpacity(
                              0.4,
                            ),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      labelStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      tabs: const [
                        Tab(text: 'Today'),
                        Tab(text: 'Week'),
                        Tab(text: 'Month'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ── STATS ROW ─────────────────────────────────────────────────────────────

  Widget _buildStatsRow() {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            icon: Icons.storage_rounded,
            label: 'Total Data',
            value: formatData(_totalData),
            sub: 'Avg: ${formatData(_avgData)}/day',
            gradient: FutureWifiTheme.accentGradient,
            glowColor: FutureWifiTheme.signatureGreen,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            icon: Icons.schedule_rounded,
            label: 'Total Time',
            value: formatTime(_totalTime),
            sub: 'Avg: ${formatTime(_avgTime)}/day',
            gradient: FutureWifiTheme.cyanGradient,
            glowColor: FutureWifiTheme.accentCyan,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard({
    required IconData icon,
    required String label,
    required String value,
    required String sub,
    required LinearGradient gradient,
    required Color glowColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: FutureWifiTheme.bgCard,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: FutureWifiTheme.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: glowColor.withOpacity(0.35),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Icon(icon, color: Colors.white, size: 18),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              color: FutureWifiTheme.textSecondary,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: FutureWifiTheme.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            sub,
            style: const TextStyle(
              color: FutureWifiTheme.textMuted,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  // ── CHART CARD ────────────────────────────────────────────────────────────

  Widget _buildChartCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: FutureWifiTheme.cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              ShaderMask(
                shaderCallback:
                    (bounds) =>
                        FutureWifiTheme.accentGradient.createShader(bounds),
                child: const Icon(
                  Icons.trending_up_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Data Usage',
                style: TextStyle(
                  color: FutureWifiTheme.textPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (_selectedTime != null) ...[
                const Spacer(),
                GestureDetector(
                  onTap: () => setState(() => _selectedTime = null),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: FutureWifiTheme.signatureGreen.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: FutureWifiTheme.signatureGreen.withOpacity(0.4),
                      ),
                    ),
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        color: FutureWifiTheme.signatureGreen,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 20),
          // Bar Chart
          SizedBox(
            height: 180,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: (_maxData * 1.2).toDouble(),
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    tooltipBorderRadius: BorderRadius.circular(10),
                    getTooltipColor: (_) => FutureWifiTheme.bgCardAlt,
                    getTooltipItem: (group, groupIndex, rod, rodIndex) {
                      final item = _currentData[groupIndex];
                      return BarTooltipItem(
                        '${item.time}\n${formatData(item.data)}',
                        const TextStyle(
                          color: FutureWifiTheme.textPrimary,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      );
                    },
                  ),
                  touchCallback: (event, response) {
                    if (event is FlTapUpEvent && response?.spot != null) {
                      final idx = response!.spot!.touchedBarGroupIndex;
                      final tappedTime = _currentData[idx].time;
                      setState(() {
                        _selectedTime =
                            _selectedTime == tappedTime ? null : tappedTime;
                      });
                    }
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final idx = value.toInt();
                        if (idx < 0 || idx >= _currentData.length) {
                          return const SizedBox();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            _currentData[idx].time,
                            style: const TextStyle(
                              color: FutureWifiTheme.textSecondary,
                              fontSize: 10,
                            ),
                          ),
                        );
                      },
                      reservedSize: 28,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 44,
                      getTitlesWidget: (value, meta) {
                        if (value == 0) return const SizedBox();
                        return Text(
                          value >= 1024
                              ? '${(value / 1024).toStringAsFixed(1)}G'
                              : '${value.toInt()}M',
                          style: const TextStyle(
                            color: FutureWifiTheme.textMuted,
                            fontSize: 10,
                          ),
                        );
                      },
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  getDrawingHorizontalLine:
                      (_) => FlLine(
                        color: FutureWifiTheme.border,
                        strokeWidth: 1,
                        dashArray: [4, 4],
                      ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: List.generate(_currentData.length, (i) {
                  final item = _currentData[i];
                  final isSelected = _selectedTime == item.time;
                  final hasSelection = _selectedTime != null;

                  Color barColor;
                  if (isSelected) {
                    barColor = FutureWifiTheme.accentGreen;
                  } else if (hasSelection) {
                    barColor = FutureWifiTheme.textMuted;
                  } else {
                    barColor =
                        FutureWifiTheme.barColors[i %
                            FutureWifiTheme.barColors.length];
                  }

                  return BarChartGroupData(
                    x: i,
                    barRods: [
                      BarChartRodData(
                        toY: item.data.toDouble(),
                        width: _period == 'today' ? 18 : 22,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                        gradient: LinearGradient(
                          colors:
                              isSelected
                                  ? [
                                    FutureWifiTheme.accentGreen,
                                    FutureWifiTheme.accentGreen.withOpacity(
                                      0.5,
                                    ),
                                  ]
                                  : hasSelection
                                  ? [
                                    FutureWifiTheme.textMuted,
                                    FutureWifiTheme.textMuted.withOpacity(0.3),
                                  ]
                                  : [barColor, barColor.withOpacity(0.4)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Navigation row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _navButton(
                label: 'Previous',
                icon: Icons.chevron_left_rounded,
                iconFirst: true,
                onTap:
                    () => setState(() {
                      _timeOffset--;
                      _selectedTime = null;
                    }),
              ),
              Text(
                _periodLabel,
                style: const TextStyle(
                  color: FutureWifiTheme.textPrimary,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              _navButton(
                label: 'Next',
                icon: Icons.chevron_right_rounded,
                iconFirst: false,
                onTap:
                    _timeOffset < 0
                        ? () => setState(() {
                          _timeOffset++;
                          _selectedTime = null;
                        })
                        : null,
              ),
            ],
          ),
          if (_selectedTime != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  'Showing $_selectedTime\'s activity',
                  style: const TextStyle(
                    color: FutureWifiTheme.textMuted,
                    fontSize: 11,
                  ),
                ),
              ),
            )
          else
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  'Tap a bar to view details',
                  style: TextStyle(
                    color: FutureWifiTheme.textMuted,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _navButton({
    required String label,
    required IconData icon,
    required bool iconFirst,
    required VoidCallback? onTap,
  }) {
    final enabled = onTap != null;
    final color =
        enabled ? FutureWifiTheme.signatureGreen : FutureWifiTheme.textMuted;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          color:
              enabled
                  ? FutureWifiTheme.signatureGreen.withOpacity(0.12)
                  : FutureWifiTheme.bgCardAlt,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color:
                enabled
                    ? FutureWifiTheme.signatureGreen.withOpacity(0.3)
                    : FutureWifiTheme.border,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children:
              iconFirst
                  ? [
                    Icon(icon, color: color, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      label,
                      style: TextStyle(
                        color: color,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]
                  : [
                    Text(
                      label,
                      style: TextStyle(
                        color: color,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(icon, color: color, size: 16),
                  ],
        ),
      ),
    );
  }

  // ── ACTIVITY TIMELINE ─────────────────────────────────────────────────────

  Widget _buildActivityTimeline() {
    final displayData = _activityData;
    final maxVal = displayData.fold(0, (m, d) => d.data > m ? d.data : m);

    return Container(
      decoration: FutureWifiTheme.cardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                ShaderMask(
                  shaderCallback:
                      (bounds) =>
                          FutureWifiTheme.accentGradient.createShader(bounds),
                  child: const Icon(
                    Icons.calendar_today_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Activity Timeline',
                  style: TextStyle(
                    color: FutureWifiTheme.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (_selectedTime != null) ...[
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: FutureWifiTheme.accentGreen.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: FutureWifiTheme.accentGreen.withOpacity(0.4),
                      ),
                    ),
                    child: Text(
                      _selectedTime!,
                      style: const TextStyle(
                        color: FutureWifiTheme.accentGreen,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          const Divider(height: 1, color: FutureWifiTheme.border),
          // List
          ...displayData.asMap().entries.map((entry) {
            final i = entry.key;
            final item = entry.value;
            final originalIndex = _currentData.indexWhere(
              (d) => d.time == item.time,
            );
            final barColor =
                FutureWifiTheme.barColors[originalIndex %
                    FutureWifiTheme.barColors.length];
            final isSelected = _selectedTime == item.time;
            final pct = maxVal > 0 ? item.data / maxVal : 0.0;

            return _TimelineSlot(
              item: item,
              barColor: isSelected ? FutureWifiTheme.accentGreen : barColor,
              progressPercent: pct,
              isLast: i == displayData.length - 1,
              autoExpand: _selectedTime != null,
              formatData: formatData,
              formatTime: formatTime,
            );
          }),
        ],
      ),
    );
  }
}

// ─── TIMELINE SLOT ───────────────────────────────────────────────────────────

class _TimelineSlot extends StatefulWidget {
  final TrafficData item;
  final Color barColor;
  final double progressPercent;
  final bool isLast;
  final bool autoExpand;
  final String Function(int) formatData;
  final String Function(int) formatTime;

  const _TimelineSlot({
    required this.item,
    required this.barColor,
    required this.progressPercent,
    required this.isLast,
    required this.autoExpand,
    required this.formatData,
    required this.formatTime,
  });

  @override
  State<_TimelineSlot> createState() => _TimelineSlotState();
}

class _TimelineSlotState extends State<_TimelineSlot>
    with SingleTickerProviderStateMixin {
  bool _expanded = false;
  late AnimationController _controller;
  late Animation<double> _expandAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 280),
    );
    _expandAnim = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    if (widget.autoExpand) _controller.forward();
  }

  @override
  void didUpdateWidget(_TimelineSlot old) {
    super.didUpdateWidget(old);
    if (widget.autoExpand && !old.autoExpand) {
      _expanded = false;
      _controller.forward();
    } else if (!widget.autoExpand && old.autoExpand) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    if (widget.autoExpand) return;
    setState(() => _expanded = !_expanded);
    _expanded ? _controller.forward() : _controller.reverse();
  }

  bool get _isOpen => widget.autoExpand || _expanded;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.item.activities.isNotEmpty ? _toggle : null,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              border:
                  !widget.isLast
                      ? const Border(
                        bottom: BorderSide(
                          color: FutureWifiTheme.border,
                          width: 0.5,
                        ),
                      )
                      : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.item.time,
                      style: const TextStyle(
                        color: FutureWifiTheme.textPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.formatTime(widget.item.duration),
                          style: const TextStyle(
                            color: FutureWifiTheme.textSecondary,
                            fontSize: 12,
                          ),
                        ),
                        if (widget.item.activities.isNotEmpty &&
                            !widget.autoExpand) ...[
                          const SizedBox(width: 6),
                          AnimatedRotation(
                            turns: _isOpen ? 0.5 : 0,
                            duration: const Duration(milliseconds: 280),
                            child: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FutureWifiTheme.textMuted,
                              size: 18,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: widget.barColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: widget.barColor.withOpacity(0.5),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          widget.item.activities.isEmpty
                              ? 'Data Used'
                              : '${widget.item.activities.length} ${widget.item.activities.length == 1 ? 'activity' : 'activities'}',
                          style: const TextStyle(
                            color: FutureWifiTheme.textSecondary,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    ShaderMask(
                      shaderCallback:
                          (bounds) => FutureWifiTheme.accentGradient
                              .createShader(bounds),
                      child: Text(
                        widget.formatData(widget.item.data),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Progress bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: widget.progressPercent,
                    backgroundColor: FutureWifiTheme.bgCardAlt,
                    valueColor: AlwaysStoppedAnimation<Color>(widget.barColor),
                    minHeight: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Expanded activities
        SizeTransition(
          sizeFactor: _expandAnim,
          child: Container(
            color: FutureWifiTheme.bgDark,
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: Column(
              children:
                  widget.item.activities.map((activity) {
                    final pctOfPeriod =
                        widget.item.data > 0
                            ? (activity.dataUsed / widget.item.data * 100)
                                .toStringAsFixed(0)
                            : '0';
                    return Container(
                      margin: const EdgeInsets.only(top: 8),
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: FutureWifiTheme.bgCard,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: FutureWifiTheme.border),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: FutureWifiTheme.bgCardAlt,
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: FutureWifiTheme.border,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    activity.icon,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          activity.name,
                                          style: const TextStyle(
                                            color: FutureWifiTheme.textPrimary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                          ),
                                        ),
                                        const SizedBox(width: 6),
                                        Icon(
                                          activity.type == 'app'
                                              ? Icons.smartphone_rounded
                                              : Icons.language_rounded,
                                          color:
                                              activity.type == 'app'
                                                  ? FutureWifiTheme
                                                      .signatureGreen
                                                  : FutureWifiTheme.accentGreen,
                                          size: 13,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      activity.category,
                                      style: const TextStyle(
                                        color: FutureWifiTheme.textMuted,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: _activityMetric(
                                  icon: Icons.schedule_rounded,
                                  label: 'Time',
                                  value: widget.formatTime(activity.duration),
                                  sub:
                                      '${activity.entryTime} → ${activity.exitTime}',
                                  color: FutureWifiTheme.signatureGreen,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: _activityMetric(
                                  icon: Icons.storage_rounded,
                                  label: 'Data',
                                  value: widget.formatData(activity.dataUsed),
                                  sub: '$pctOfPeriod% of period',
                                  color: FutureWifiTheme.accentPurple,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _activityMetric({
    required IconData icon,
    required String label,
    required String value,
    required String sub,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 12),
              const SizedBox(width: 4),
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: FutureWifiTheme.textPrimary,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            sub,
            style: const TextStyle(
              color: FutureWifiTheme.textMuted,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

// ─── ENTRY POINT (for standalone testing) ────────────────────────────────────
