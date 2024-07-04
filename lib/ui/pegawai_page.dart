import 'package:flutter/material.dart';
import 'package:klinik_app/model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        backgroundColor: Colors.blue,
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
              pegawai: Pegawai(
                  id: 1,
                  nama: "Veneno Roadster",
                  nip: "12120908",
                  tanggal_lahir: "2013-03-07",
                  nomor_telepon: "0816362712",
                  email: "veneno63@gmail.com",
                  password: "supafast63")),
          PegawaiItem(
              pegawai: Pegawai(
                  id: 2,
                  nama: "Aventador SVJ",
                  nip: '12120907',
                  tanggal_lahir: "2019-04-05",
                  nomor_telepon: "0877065712",
                  email: "aventsvj@gmail.com",
                  password: "gintanisvj63")),
          PegawaiItem(
              pegawai: Pegawai(
                  id: 3,
                  nama: "Huracan STO",
                  nip: "12120906",
                  tanggal_lahir: "2021-06-09",
                  nomor_telepon: "0864052710",
                  email: "supertrofeo@gmail.com",
                  password: "sto52v10")),
        ],
      ),
    );
  }
}
