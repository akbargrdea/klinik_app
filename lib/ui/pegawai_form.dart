import 'package:flutter/material.dart';
import 'package:klinik_app/model/pegawai.dart';
import 'package:klinik_app/ui/pegawai_detail.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({super.key});

  @override
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _IdPegawaiCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _nimPegawaiCtrl = TextEditingController();
  final _tlPegawaiCtrl = TextEditingController();
  final _notelpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passPegawaiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldIdPegawai(),
              _fieldNamaPegawai(),
              const SizedBox(height: 20),
              _fieldNIPPegawai(),
              const SizedBox(height: 20),
              _fieldTLPegawai(),
              const SizedBox(height: 20),
              _fieldNoTelpPegawai(),
              const SizedBox(height: 20),
              _fieldEmailPegawai(),
              const SizedBox(height: 20),
              _fieldPassPegawai(),
              const SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldIdPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "ID Pegawai"),
      controller: _IdPegawaiCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'ID Pegawai Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldNamaPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nama Pegawai Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldNIPPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "NIP Pegawai"),
      controller: _nimPegawaiCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'NIP Pegawai Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldTLPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir Pegawai"),
      controller: _tlPegawaiCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Tanggal Lahir Pegawai Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldNoTelpPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nomor Telepon Pegawai"),
      controller: _notelpPegawaiCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nomor Telepon Pegawai Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldEmailPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Email Pegawai"),
      controller: _emailPegawaiCtrl,
      validator: (value) {
        if (value == null || value.isEmpty || !value.contains('@')) {
          return 'Email Pegawai Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _fieldPassPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Password Pegawai"),
      controller: _passPegawaiCtrl,
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password Pegawai Wajib Diisi';
        }
        return null;
      },
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Pegawai pegawai = Pegawai(
              id: int.parse(_IdPegawaiCtrl.text),
              nama: _namaPegawaiCtrl.text,
              nip: _nimPegawaiCtrl.text,
              tanggal_lahir: _tlPegawaiCtrl.text,
              nomor_telepon: _notelpPegawaiCtrl.text,
              email: _emailPegawaiCtrl.text,
              password: _passPegawaiCtrl.text,
            );
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => PegawaiDetail(pegawai: pegawai)));
          }
        },
        child: const Text("Simpan"));
  }
}
