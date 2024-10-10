import 'package:flutter/material.dart';
import '../model/Pasien.dart';
import 'pasien_update_form.dart';
import 'pasien_page.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Detail Pasien"), backgroundColor: Colors.blue),
        body: ListView(
          children: [
            const SizedBox(height: 20),
            ListTile(
                title: Text("ID : ${widget.pasien.id}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("Nama Pasien : ${widget.pasien.nama}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("NIP Pasien : ${widget.pasien.nip}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text(
                    "Tanggal Lahir Pasien : ${widget.pasien.tanggal_lahir}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text(
                    "Nomor Telepon Pasien : ${widget.pasien.nomor_telepon}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("Email Pasien : ${widget.pasien.email}",
                    style: const TextStyle(fontSize: 20))),
            ListTile(
                title: Text("Password Pasien : ${widget.pasien.password}",
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
                      PasienUpdateForm(pasien: widget.pasien)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin ingin menghapus data ini?"),
            actions: [
              // tombol ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const PasienPage()));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("YA"),
              ),
              // tombol batal
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Tidak"),
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
