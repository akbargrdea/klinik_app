import 'package:flutter/material.dart';
import 'package:klinik_app/model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';
import '../widget/sidebar.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        backgroundColor: Colors.blue,
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
              pasien: Pasien(
                  id: 1,
                  nama: "Azizi Shafaa Asadel",
                  nip: "16052004",
                  tanggal_lahir: "2004-05-16",
                  nomor_telepon: "0816362712",
                  email: "azzshfa@gmail.com",
                  password: "azzshfadel")),
          PasienItem(
              pasien: Pasien(
                  id: 2,
                  nama: "Marsha Lenathea Lapian",
                  nip: '12120907',
                  tanggal_lahir: "2006-04-05",
                  nomor_telepon: "0877065712",
                  email: "mrshalen@gmail.com",
                  password: "marshatheala")),
          PasienItem(
              pasien: Pasien(
                  id: 3,
                  nama: "Kathrina Irene Indarto",
                  nip: "12120906",
                  tanggal_lahir: "2006-06-09",
                  nomor_telepon: "0864052710",
                  email: "Kathreene@gmail.com",
                  password: "kathrindarto")),
        ],
      ),
    );
  }
}
