import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidata_app/dashboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/Banner-Web.jpg"),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Masuk untuk memulai Jurnalku",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Username atau NIS",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan username atau NIS",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[900],
                        ),
                        child: Center(
                          child: Text(
                            "Masuk",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),     
                    Center(
                      child: Text("Lupa password? Hubungi guru laboran.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: 
                Column(
                  children: [
                  Text("Menyatukan Upaya untuk Kemajuan Siswa", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                SizedBox(height: 20),
                Text("Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.", style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),
                textAlign: TextAlign.center,
                )
                  ],
                )
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.home),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dirancang untuk sekolah kami", style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 10),
                          Text("Dikembangkan khusus untuk memenuhi kebutuhan\nsekolah kami dengan fokus pada kemajuan siswa\nkami.", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.schema_outlined),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pemantauan yang Terstruktur", style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 10),
                          Text("Memudahkan guru dalam menyusun dan memantau\ndaftar kompetensi keahlian yang harus dikuasai siswa.", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.self_improvement),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fitur Praktis dan Bermanfaat", style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 10),
                          Text("Termasuk reminder otomatis, grafik perkembangan,\ndan analisis mendalam untuk efektivitas belajar.", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.school),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pengajuan Kompetensi oleh Siswa", style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 10),
                          Text("Siswa dapat mengajukan kompetensi yang telah\ndikuasai untuk diverifikasi oleh guru.", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.edit_note),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Validasi dan Tanda Tangan Guru", style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 10),
                          Text("Setiap kompetensi yang disetujui akan diberikan\ntanda terima dan tanda tangan guru sebagai bukti.", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
               SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.5
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.computer),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pantauan Real-Time dan Transparan", style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 10),
                          Text("Monitoring langsung, menciptakan lingkungan belajar\nyang efisien.", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 25),
                color: Colors.blue[900],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.call, color: Colors.white, size: 22),
                        SizedBox(width: 20),
                        Icon(Icons.camera_alt_outlined, color: Colors.white, size: 22),
                        SizedBox(width: 20),
                        Icon(Icons.linked_camera_outlined, color: Colors.white, size: 22), 
                        SizedBox(width: 20),
                        Icon(Icons.play_circle_fill, color: Colors.white, size: 22), 
                      ],
                    ),

                    SizedBox(height: 15),

                    Text(
                      "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
