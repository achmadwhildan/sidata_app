import 'package:flutter/material.dart';

class DetailProjectPage extends StatelessWidget {
  final Map<String, dynamic> data;

  const DetailProjectPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(data["title"], style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ProjectExpandableCard(
              title: data["title"],
              subtitle: data["subtitle"],
              details: data["details"],
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectExpandableCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Map<String, dynamic> details;

  const ProjectExpandableCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          collapsedBackgroundColor: Colors.white,
          backgroundColor: const Color(0xFFF7F2F8),
          
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ),
          
          children: [
             Container(
               width: double.infinity,
               color: const Color(0xFFF7F2F8),
               padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
               child: Column(
                 children: [
                    const Divider(color: Colors.black12),
                    ...details.entries.map((e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 110, child: Text(e.key, style: TextStyle(color: Colors.grey[600], fontSize: 13))),
                          Expanded(child: Text(e.value, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13))),
                        ],
                      ),
                    )),
                 ],
               ),
             )
          ],
        ),
      ),
    );
  }
}