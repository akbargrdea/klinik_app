import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_update_form.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Detail Pegawai"), backgroundColor: Colors.blue),
        body: ListView(
          children: [
            const SizedBox(height: 20),
            ListTile(
                title: Text("ID : ${widget.pegawai.id}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("Nama Pegawai : ${widget.pegawai.nama}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("NIP Pegawai : ${widget.pegawai.nip}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text(
                    "Tanggal Lahir Pegawai : ${widget.pegawai.tanggal_lahir}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text(
                    "Nomor Telepon Pegawai : ${widget.pegawai.nomor_telepon}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("Email Pegawai : ${widget.pegawai.email}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("Password Pegawai : ${widget.pegawai.password}",
                    style: const TextStyle(fontSize: 20))),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _tombolUbah(),
                _tombolHapus(),
              ],
            )
          ],
        ));
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PegawaiUpdateForm(pegawai: widget.pegawai)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
