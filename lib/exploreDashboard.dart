import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidata_app/dashboard.dart';

class Exploredashboard extends StatefulWidget {
  const Exploredashboard({super.key});

  @override
  State<Exploredashboard> createState() => _ExploreState();
}

class _ExploreState extends State<Exploredashboard> with TickerProviderStateMixin {
  bool showAdvancedFilter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.book, color: Color(0xFF003B8E)),
        title: Text(
          "Jurnalku",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF003B8E),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF003B8E),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text("Dashboard", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Banner-Web.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 1),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children: [
                      Text(
                        "Direktori Siswa",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: _buildFilterCard(),
            ),

            SizedBox(height: 50),
            studentCard(
              image: "assets/images/09486.jpg",
              name: "Achmad Whildan",
              nis: "12309486",
              rombel: "PPLG XII-5",
              rayon: "Cis 2",
              portfolioCount: 1,
              sertifikatCount: 8,
            ),

            studentCard(
              image: "assets/images/09486.jpg",
              name: "Adara Nisha Qanita",
              nis: "12510783",
              rombel: "PPLG X-3",
              rayon: "Cic 6",
              portfolioCount: 1,
              sertifikatCount: 1,
            ),

            SizedBox(height: 40),

            Container(
              width: double.infinity,
              color: Color(0xFF003B8E),
              padding: EdgeInsets.only(top: 18, bottom: 14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: 22,
                        color: Colors.white,
                      ),
                      SizedBox(width: 22),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 22,
                        color: Colors.white,
                      ),
                      SizedBox(width: 22),
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 22,
                        color: Colors.white,
                      ),
                      SizedBox(width: 22),
                      FaIcon(
                        FontAwesomeIcons.youtube,
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterCard() {
    return Card(
      elevation: 10,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Cari nama siswa, NIS, atau rombel",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 8),

                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF003B8E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Cari",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 14),

            SizedBox(
              width: 180,
              height: 42,
              child: InkWell(
                onTap: () {
                  setState(() => showAdvancedFilter = !showAdvancedFilter);
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.filter_alt_outlined, size: 18),
                      SizedBox(width: 8),
                      Text(
                        "Filter Lanjutan",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        showAdvancedFilter
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 22,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            if (showAdvancedFilter) _buildAdvancedFilter(),
          ],
        ),
      ),
    );
  }

  Widget _buildAdvancedFilter() {
    return Column(
      children: [
        _buildDropdownButton("Semua Rombel", [
          "PPLG XII-5",
          "PPLG XII-4",
          "PPLG XII-3",
        ]),
        SizedBox(height: 12),
        _buildDropdownButton("Semua Rayon", ["Cicurug", "Wikrama", "Ciawi"]),
        SizedBox(height: 12),
        _buildDropdownButton("Semua Jurusan", ["PPLG", "DKV", "TJKT"]),
        SizedBox(height: 18),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF003B8E),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Terapkan Filter",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),

        SizedBox(height: 10),

        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              side: const BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text("Reset Filter", style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownButton(String label, List<String> items) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (ctx) {
                  return SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            label,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ...items.map(
                          (it) => ListTile(
                            title: Text(it),
                            onTap: () => Navigator.pop(ctx),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  Expanded(child: Text(label, style: TextStyle(fontSize: 15))),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // CARD SISWA
  Widget studentCard({
    required String image,
    required String name,
    required String nis,
    required String rombel,
    required String rayon,
    required int portfolioCount,
    required int sertifikatCount,
  }) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image bulat dan posisinya di start (kiri), info di bawah
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(image),
                    backgroundColor: Colors.grey.shade200,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      nis,
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    SizedBox(width: 8),
                    Text("|", style: TextStyle(color: Colors.black38)),
                    SizedBox(width: 8),
                    Text(
                      rombel,
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    SizedBox(width: 8),
                    Text("|", style: TextStyle(color: Colors.black38)),
                    SizedBox(width: 8),
                    Text(
                      rayon,
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 16),
            Divider(height: 1, color: Colors.grey.shade300),
            SizedBox(height: 14),

            Row(
              children: [
                Icon(Icons.folder_open, size: 16, color: Colors.black54),
                SizedBox(width: 6),
                Text(
                  "$portfolioCount Portfolio",
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
                Spacer(),
                Icon(Icons.verified, size: 16, color: Colors.black54),
                SizedBox(width: 6),
                Text(
                  "$sertifikatCount Sertifikat",
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
              ],
            ),

            SizedBox(height: 18),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF003B8E),
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Lihat Detail",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 10),
                    Spacer(),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
