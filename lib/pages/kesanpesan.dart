import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  final Color primaryBlue = const Color.fromARGB(255, 68, 119, 248);

  Widget _buildInfoCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Kesan & Saran Mata Kuliah', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 68, 119, 248),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundColor: primaryBlue.withOpacity(0.1),
              backgroundImage: const AssetImage('assets/fotoku.jpg'), 
            ),
            const SizedBox(height: 15),
            
            Text(
              "Wahyu Dyas Puspitasari", 
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
                color: primaryBlue, 
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "124230051", 
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            
            _buildInfoCard(
              title: "Kesan",
              subtitle: "Mata kuliah yang menurut saya sangat seru dan menantang yang memberikan sebuah pengalaman yang berharga.",
              icon: Icons.message,
              color: primaryBlue,
            ),
            
            _buildInfoCard(
              title: "Saran",
              subtitle: "Pembelajaran sudah bagus dan menarik, saran mungkin bisa ditambah sesi sharing dengan mahasiswa mengenai project masing-masing.",
              icon: Icons.favorite,
              color: primaryBlue,
            ), 
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}