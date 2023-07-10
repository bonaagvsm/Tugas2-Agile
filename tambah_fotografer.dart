import 'package:flutter/material.dart';

class TambahFotografer extends StatefulWidget {
  const TambahFotografer({super.key});

  @override
  State<TambahFotografer> createState() => _TambahFotograferState();
}

class _TambahFotograferState extends State<TambahFotografer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 37, top: 30),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 75,
                  color: Color.fromARGB(255, 175, 175, 175),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 50,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 70,
                  child: Center(child: Text('Tambahkan foto fotografer anda',style: TextStyle(fontSize: 15),),),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukan nama fotografer anda',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Alamat fotografer',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukan harga satuan',
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              width: 300,
              height: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Deskripsi',
                ),
              )),
              Container(width: 80,height: 40,margin: EdgeInsets.only(left: 200),child: ElevatedButton(onPressed: () {}, child: Text('Submit')),)
        ],
      ),
    );
  }
}