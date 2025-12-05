import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCatatanSikap extends StatelessWidget {
  const DetailCatatanSikap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: Text(
          "Detail Catatan",
          style: GoogleFonts.poppins(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.red.shade200,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.warning_amber_rounded,
                        color: Color.fromARGB(255, 247, 38, 23),
                        size: 32,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _detailItem("Kategori", "Disiplin"),
                  _detailItem("Catatan", "Sering terlambat masuk kelas"),
                  _detailItem("Status", "Belum diperbaiki"),
                  _detailItem("Dilaporkan oleh", "Wali Kelas"),
                  _detailItem("Update Terakhir", "01 Desember 2025"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.amber.shade200,
                ),
              ),
              child: Text(
                "Catatan ini dibuat sebagai pengingat agar siswa "
                "meningkatkan kedisiplinan dan kehadiran di kelas.",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.amber[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 3),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
