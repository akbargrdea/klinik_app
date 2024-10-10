import 'package:flutter/material.dart';
import 'package:klinik_app/model/pasien.dart';
import 'package:klinik_app/ui/pasien_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({super.key});

  @override
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _IdPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _nimPasienCtrl = TextEditingController();
  final _tlPasienCtrl = TextEditingController();
  final _notelpPasienCtrl = TextEditingController();
  final _emailPasienCtrl = TextEditingController();
  final _passPasienCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldIdPasien(),
              _fieldNamaPasien(),
              const SizedBox(height: 20),
              _fieldNIPPasien(),
              const SizedBox(height: 20),
              _fieldTLPasien(),
              const SizedBox(height: 20),
              _fieldNoTelpPasien(),
              const SizedBox(height: 20),
              _fieldEmailPasien(),
              const SizedBox(height: 20),
              _fieldPassPasien(),
              const SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldIdPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "ID Pasien"),
      controller: _IdPasienCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'ID Pasien Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldNamaPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nama Pasien Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldNIPPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "NIP Pasien"),
      controller: _nimPasienCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'NIP Pasien Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldTLPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Pasien"),
      controller: _tlPasienCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Tanggal Lahir Pasien Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldNoTelpPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nomor Telepon Pasien"),
      controller: _notelpPasienCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nomor Telepon Pasien Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldEmailPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Email Pasien"),
      controller: _emailPasienCtrl,
      validator: (value) {
        if (value == null || value.isEmpty || !value.contains('@')) {
          return 'Email Pasien Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldPassPasien() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Password Pasien"),
      controller: _passPasienCtrl,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password Pasien Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Pasien pasien = Pasien(
              id: int.parse(_IdPasienCtrl.text),
              nama: _namaPasienCtrl.text,
              nip: _nimPasienCtrl.text,
              tanggal_lahir: _tlPasienCtrl.text,
              nomor_telepon: _notelpPasienCtrl.text,
              email: _emailPasienCtrl.text,
              password: _passPasienCtrl.text,
            );
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => PasienDetail(pasien: pasien)));
          }
        },
        child: const Text("Simpan"));
  }
}
