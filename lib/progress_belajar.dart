import 'package:flutter/material.dart';
import 'package:sidata_app/DetailProjectPage.dart';
import 'package:sidata_app/card_progress.dart'; 
import 'package:sidata_app/navbar.dart';      

class ProgressBelajar extends StatelessWidget {
  const ProgressBelajar({super.key});

  final List<Map<String, dynamic>> projectData = const [
    {
      "title": "Project Work",
      "subtitle": "Kompetensi dan materi pembelajaran",
      "details": {
        "Kompetensi": "Pengembangan Web",
        "Guru": "Pak Budi",
        "Tanggal": "12 Des 2025",
        "Status": "Dalam Pengerjaan",
        "Catatan Guru": "Belum ada catatan guru",
        "Catatan Siswa" : "Belum ada catatan siswa",
      }
    },
    {
      "title": "Mobile Apps",
      "subtitle": "Pengembangan Aplikasi Android",
      "details": {
       "Kompetensi": "Pengembangan Web",
        "Guru": "Pak Budi",
        "Tanggal": "12 Des 2025",
        "Status": "Dalam Pengerjaan",
        "Catatan Guru": "Belum ada catatan guru",
        "Catatan Siswa" : "Belum ada catatan siswa",
      }
    },
    {
      "title": "UKK",
      "subtitle": "Uji Kompetensi Keahlian",
      "details": {
       "Kompetensi": "Pengembangan Web",
        "Guru": "Pak Budi",
        "Tanggal": "12 Des 2025",
        "Status": "Dalam Pengerjaan",
        "Catatan Guru": "Belum ada catatan guru",
        "Catatan Siswa" : "Belum ada catatan siswa",
      }
    },
    {
      "title": "GIM",
      "subtitle": "Game Development",
      "details": {
        "Kompetensi": "Pengembangan Web",
        "Guru": "Pak Budi",
        "Tanggal": "12 Des 2025",
        "Status": "Dalam Pengerjaan",
        "Catatan Guru": "Belum ada catatan guru",
        "Catatan Siswa" : "Belum ada catatan siswa",
      }
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HeaderProfile(
            nama: "Rafid Dwi Prakoso",
            kelas: "PPLG XII-5",
            imagePath: "assets/images/gwehj.jpg",
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Progress Belajar",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text("Pantau perkembangan kompetensi anda", style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Wednesday, 3 December 2025",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),

                  StatCard(
                    title: "Total Pengajuan",
                    value: "4",
                    status: "Semua status",
                    colorTheme: Colors.blue,
                    icon: Icons.folder_open,
                  ),
                  const SizedBox(height: 20),
                  StatCard(
                    title: "Halaman ini",
                    value: "4",
                    status: "Data ditampilkan",
                    colorTheme: Colors.green,
                    icon: Icons.calendar_today,
                  ),
                  const SizedBox(height: 20),
                  StatCard(
                    title: "Status Pending",
                    value: "4",
                    status: "Perlu Validasi",
                    colorTheme: Colors.orange,
                    icon: Icons.access_time_outlined,
                  ),
                  const SizedBox(height: 20),
                  StatCard(
                    title: "Total Halaman",
                    value: "4",
                    status: "Navigasi Tersedia",
                    colorTheme: Colors.purple,
                    icon: Icons.location_on_outlined,
                  ),
                  
                  const SizedBox(height: 30),
                  
                  const Text(
                    "Daftar Project",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  ...projectData.map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailProjectPage(data: item),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey.shade200),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.05),
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              )
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item["title"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      fontSize: 16
                                    ),
                                  ),
                                  Text(
                                    item["subtitle"],
                                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                                  ),
                                ],
                              ),
                              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}