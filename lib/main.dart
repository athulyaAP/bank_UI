import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: Bank(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list2 = [
      'My Account',
      'Load eSeva',
      'Payment',
      'Fund Transfer',
      'Schedule\nPayment',
      'Scan To Pay'
    ];
    List list1 = [
      "assets/icons/f4.png",
      "assets/icons/f7.png",
      "assets/icons/f3.png",
      "assets/icons/f.png",
      "assets/icons/f5.png",
      "assets/icons/f1.png",
    ];
    List list3 = [
      "14-02-2023",
      "10-01-2023",
      "8-12-2022",
      "10-08-2022",
      "9-07-2022"
    ];
    List list4 = [
      "NPR. 10,000.00",
      "NPR. 11,000.00",
      "NPR. 10,500.00",
      "NPR. 15,000.00",
      "NPR. 20,000.00",
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.menu_outlined, size: 28),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code_2_outlined,
              size: 34,
            ),
          )
        ],
        title: RichText(
          text: const TextSpan(
              text: 'Welcome!',
              style: TextStyle(fontSize: 23, color: Colors.white),
              children: [
                TextSpan(
                  text: '\tMAUSAM',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                )
              ]),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 230,
              ),
              Container(
                height: 100,
                color: Colors.red,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: SizedBox(
                      height: 180,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 56,
                                child: CircleAvatar(
                                  radius: 52,
                                  backgroundImage:
                                      AssetImage('assets/images/alan.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'SAMMUNATI BAHTKHATA',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(height: 3),
                                    Row(children: [
                                      RichText(
                                        text: const TextSpan(
                                            text: 'NPR.',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.red),
                                            children: [
                                              TextSpan(
                                                text: '\t1,00,999.35\t',
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    color: Colors.red),
                                              )
                                            ]),
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.green[200],
                                      )
                                    ]),
                                    const SizedBox(height: 6),
                                    const Text(
                                      '281678372425465546',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/icons/f9.png",
                width: 32,
                height: 32,
              ),
              const Text(
                "\tWOULD YOU LIKE TO?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                children: List.generate(6, (index) {
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          list1[index],
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          list2[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset(
                "assets/icons/f9.png",
                width: 32,
                height: 32,
              ),
              const Text(
                "\tLAST TRANSACTIONS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              )
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 85,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                              height: 85,
                              color: const Color.fromRGBO(244, 67, 54, 1),
                              width: 10,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "CWDR/\n97488/879658372425465/",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        list3[index],
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    list4[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
