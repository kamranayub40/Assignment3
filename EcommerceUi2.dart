import 'package:flutter/material.dart';

class EcommerceUi2 extends StatefulWidget {
  const EcommerceUi2({Key? key}) : super(key: key);

  @override
  _EcommerceUi2State createState() => _EcommerceUi2State();
}

class _EcommerceUi2State extends State<EcommerceUi2> {
  var data = [
    "Full Name",
    "Email",
    "Phone Number",
    "Address",
    "Gender",
    "Date Of Birth"
  ];
  var subdata = [
    "User",
    "abc@gmail.com",
    "+920785693485",
    "pakistan Random street House NoL72",
    "Male",
    "October 13 1999"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      abc("User", "abc@gmail.com", "logout", "assets/user.png"),
      SizedBox(
        height: 10,
      ),
      Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text(subdata[index]),
                );
              }),
        ],
      )
    ]));
  }
}

Widget abc(var name, email, log, image) {
  return Container(
    color: Colors.white,
    height: 300,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image.network(image),
          color: Colors.white,
          width: 200,
          height: 500,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            Text(
              email,
            ),
            Text(log),
          ]),
        )
      ],
    ),
  );
}
