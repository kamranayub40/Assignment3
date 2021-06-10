import 'package:flutter/material.dart';

class Ecommerce3 extends StatefulWidget {
  const Ecommerce3({Key? key}) : super(key: key);

  @override
  _Ecommerce3State createState() => _Ecommerce3State();
}

class _Ecommerce3State extends State<Ecommerce3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(children: [
              Container(
                height: 40,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20),
                    hintText: 'UserName',
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(2))),
              ),
              SingleChildScrollView(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    abc("Iphone12", "5.0(23 Review)", "10", "assets/bg.png"),
                    abc("Note 20 Ultra", "5.0(23 Review)", "10",
                        "assets/note20.jpg"),
                    abc("Macbook Pro", "5.0(23 Review)", "10",
                        "assets/macpro.jpg"),
                    abc("MackBook Air", "5.0(23 Review)", "10",
                        "assets/macair.jpg"),
                    abc("Gaming Pc", "5.0(23 Review)", "10",
                        "assets/gampc.jpg"),
                    abc("Mutton", "5.0(23 Review)", "10", "assets/mutton.jpg"),
                    abc("RoadSter", "5.0(23 Review)", "10",
                        "assets/roadster.jpg"),
                    abc("Royal", "5.0(23 Review)", "10", "assets/royal.jpg"),
                    abc("Mercdes", "5.0(23 Review)", "10", "assets/merc.jpg"),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

Widget abc(
  var name,
  review,
  price,
  image,
) {
  return SingleChildScrollView(
    child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(image),
          radius: 20,
        ),
        title: Text(name),
        subtitle: Text(review),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text(price)],
        )),
  );
}
