import 'package:flutter/material.dart';
import 'package:flutter_application_2/pertemuan12/listPembayaran.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Pembayaran',
            style: TextStyle(fontSize: 30),
          ),
          Container(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.network(
                    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAABvCAMAAABhGA0xAAAAeFBMVEX///8BAQGtra0mJiY/Pz9CQkKmpqbGxsZFRUUPDw/e3t7a2tr6+vqCgoI8PDybm5tzc3NbW1szMzPq6uofHx/MzMwaGhpoaGj09PRgYGAlJSW8vLxvb283NzcrKyvR0dETExNRUVG1tbWOjo5+fn6Xl5dTU1OIiIg0hJ5HAAAD/ElEQVR4nO3d61aCQBSGYTJRQVIDVEzNtIP3f4dlwgDOsJk9awKJ7/3VWpzGJ5dxNMefPWg0dtBPrzpWwLqmZQWsa8BidMVYvdId2h7mffRrtYkCurZHeSddrOKk7VF0pAuW2/YguhKwGAGLUREr2I4GpUbLbLbgNGB0ivINjEf182s2mmYrTeThnMQH78HiFrdVWJF85POVzRa96e2QpcX5vobW4ZRmT9lKfcVEIbmzuMV9Fda7PO+zwFrxNiIWdIY2xpx2FlieNM0TWAuLW5xVYX3I8xpj5R+Dro0xp90R1pM8rzHWBFj6AYsRsBgBixGwGAGLEbAYAYsRsBgBixGwGAGLEbAY9RtLHh1ZjrW3Mea05rFCE6zkOBtW5T7KC+ZYu+oFyVzFuVkLWKHLGcRsZ4JFNqewjHv+E6ylemN6AYsRsBgBixGwGAGL0WUF6Z4XsOryPC97ZcCqazqdHvzrj73AsnUPI7kH/zV0b5qI0ZFYC2lBzRRHoxaw9hPOGIblPXhNLNWxoXhHk1j/6dhQF0vxe9bD+k9nHYBFBixG5lgvy2na8TIRWOXKWK9i1vVlIrDK3WCJ2zY3l4nAKgcsYOkHLEbAYgQsRth1YGSO9bZbXPv4fbIaWOVwuAMs/YDFyAyLOvn3SW3EJtaHFpbNp8KMsILBSEo8VOjL0/Ln9BRYxB053vkkr0wkTqCTWAdiDYrm1N1URljmKbDOx+rR7X2dlZJY3BQ3Ad0R1iAhntiMda6/2MRKXu4aa656aFa00ri01zjWcvtTcakGsUgtb1u70saxfodbXKpJLCciHgeu12oca9gqFq01qFlp41huu1ik1sOIXuldYm0MB1CoEov83KrRanzXQQdrMiYSZ7cieVr+978ay0mOxDA/jbF8atBy29gSFhl1uDPUwXKCL2L176ZYf3G4Yw+LeyAtsIy1Gj+QvgcsWmsBrBKWoVZPsWitNbBKWLRWxb5Lb7GcQHH3qGij/HLG/mLR762j6tsbe4xFv7cmCq0+Y9HvrUkkzd9rLCdYExvaS1r9xqIPUsJbrb5j0Vo3pxR6j0VqxWUtYJFaL6WLPsCitVbF76RvH0vx1Ztk9rFIrbeCVvtYJ+aKjB90qsYitQqXMRr7BtzsQScJy5nPHjmJTxES61lekLp2s6jeXhyKX48fSlNDcd3/zHoVdNkVGxnLtL95OFOuxf940D2sFgMWI2AxAhYjYDECln7JCliimv/R5F/P5FrZVOexljFd+iVxVrbVeayx/AJUWdkWsBj1BGtfvyKNOo91CDU6at2hX1vnser+Gtr8t4Xdx2owYDECFiNgMQIWI2AxAhYjYDFSPDRg59DgPzZeS1GPR3S2b4fzory2YLNnAAAAAElFTkSuQmCC",
                    width: 100,
                    height: 100,
                  ),
                  Text('Metode pembayaran QRIS')
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.network(
                    "data:image/png;base64,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",
                    width: 100,
                    height: 100,
                  ),
                  Text('Metode pembayaran BCA')
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Image.network(
                    "data:image/png;base64,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",
                    width: 100,
                    height: 100,
                  ),
                  Text('Metode pembayaran Dana')
                ]),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ListPembayaran()));
                              },
                              child: Text('Kembali ke Pembayaran'))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
