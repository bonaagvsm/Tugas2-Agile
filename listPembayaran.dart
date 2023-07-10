import 'package:flutter/material.dart';
import 'package:flutter_application_2/pertemuan12/pembayaran.dart';

class ListPembayaran extends StatefulWidget {
  const ListPembayaran({super.key});

  @override
  State<ListPembayaran> createState() => _ListPembayaranState();
}

class _ListPembayaranState extends State<ListPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Checkbox(value: true, onChanged: ((value) => {})),
            Image.network(
              "http://www.adimuliahotel.com/banner/513AdimuliaHotelbuilding.jpg",
              width: 150,
              height: 100,
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Nama Gedung:"),
              Text(
                "Adimulia Hotel",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Pembayaran()));
                        },
                        child: Text('Pilih Metode Pembayaran')),
                    Icon(Icons.navigate_next)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total :11.000.000",
                      style: TextStyle(fontSize: 30),
                    ),
                    TextButton(
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) => showAlertDalog(context)),
                      child: Text('Bayar'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  showAlertDalog(BuildContext context) {
    return AlertDialog(
      title: Text('Pembayaran Berhasil?'),
      content: Icon(
        Icons.check_circle,
        size: 150,
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK'))
      ],
    );
  }
}
