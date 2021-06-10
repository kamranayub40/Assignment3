import 'package:flutter/material.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  var lst = ["assets/bg.jpg", "assets/bg.jpg", "assets/bg.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        abc("IPhone12", "5.0(23 Review)", "20 piece 90", "quantity 1",
            "assets/bg.png"),
        SizedBox(
          height: 10,
        ),
        abc("Note 20 altra", "5.0(23 Review)", "20 piece 90", "quantity 1",
            "assets/note20.jpg"),
        SizedBox(
          height: 10,
        ),
        abc("MackBook Air", "5.0(23 Review)", "20 piece 90", "quantity 1",
            "assets/macair.jpg"),
        SizedBox(
          height: 10,
        ),
        abc("macBookPro", "5.0(23 Review)", "20 piece 90", "quantity 1",
            "assets/macpro.jpg"),
        SizedBox(
          height: 10,
        ),
        abc("Gaming PC", "5.0(23 Review)", "20 piece 90", "quantity 1",
            "assets/gampc.jpg"),
      ],
    ));
  }
}

Widget abc(var name, review, price, quantity, image) {
  return Container(
    color: Colors.white,
    height: 100,
    child: Row(
      children: [
        Container(
          child: Image.network(image),
          color: Colors.grey,
          width: 200,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text(review),
                Text(price),
                Text(quantity),
              ]),
        )
      ],
    ),
  );
}
