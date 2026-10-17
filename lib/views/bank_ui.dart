// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/hot_line.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BankUI extends StatefulWidget {
  const BankUI({super.key});

  @override
  State<BankUI> createState() => _BankUIState();
}

class _BankUIState extends State<BankUI> {
  List imagesCrs = [
    'assets/images/bank/bank_0.png',
  ];

  List Hotdata = [
    //ข้อมูลร้านเค้ก  ----------------------------------------
    Hotline(
      name: 'ธนาคารกรุงเทพ',
      image1: 'assets/images/bank/bank_1.png',
      phone: '1333',
    ),
    Hotline(
      name: 'ธนาคารออมสิน',
      image1: 'assets/images/bank/bank_2.png',
      phone: '1115',
    ),
    Hotline(
      name: 'ธนาคารกสิกร',
      image1: 'assets/images/bank/bank_3.png',
      phone: '02 888 8888',
    ),
    Hotline(
      name: 'ธนาคารกรุงไทย',
      image1: 'assets/images/bank/bank_4.png',
      phone: '02 111 1111',
    ),
    Hotline(
      name: 'ธนาคารกรุงศรี',
      image1: 'assets/images/bank/bank_5.png',
      phone: '1572',
    ),
    Hotline(
      name: 'ธนาคารทีเอ็มบี',
      image1: 'assets/images/bank/bank_6.png',
      phone: '1428',
    ),
    Hotline(
      name: 'ธนาคารซิตี้แบงก์',
      image1: 'assets/images/bank/bank_7.png',
      phone: '1588',
    ),
    Hotline(
      name: 'ธนาคารแลนด์ แอนด์ เฮ้าส์ ',
      image1: 'assets/images/bank/bank_8.png',
      phone: '1327',
    ),
    Hotline(
      name: 'ธนาคารอาคารสงเคราะห์',
      image1: 'assets/images/bank/bank_9.png',
      phone: '02 645 9000',
    ),
    Hotline(
      name: 'ธนาคารไทยพานิชย์',
      image1: 'assets/images/bank/bank_10.png',
      phone: '02 777 7777',
    ),
    Hotline(
      name: 'ธนาคารเกียรตินาคินภัทร ',
      image1: 'assets/images/bank/bank_11.png',
      phone: '02 165 5555',
    ),
    Hotline(
      name: 'ธนาคารไทยเครดิต',
      image1: 'assets/images/bank/bank_12.png',
      phone: '02 697 5454',
    ),
    Hotline(
      name: 'ธนาคารยูโอบี (UOB)',
      image1: 'assets/images/bank/bank_13.png',
      phone: '02 285 1555',
    ),
    Hotline(
      name: 'ธนาคารทิสโก้',
      image1: 'assets/images/bank/bank_14.png',
      phone: '02 633 6000',
    ),
    Hotline(
      name: 'ธนาคารอิสลาม',
      image1: 'assets/images/bank/bank_15.png',
      phone: '02 204 2766',
    ),
    Hotline(
      name: 'ธนาคารซีไอเอ็มบี ไทย',
      image1: 'assets/images/bank/bank_16.png',
      phone: '02 626 7777',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 250, 250),
      body: Center(
        child: Column(
          children: [
            //ส่วนของ carousel imagesCrs
            // CarouselSlider.builder(
            //   itemCount: imagesCrs.length,
            //   options: CarouselOptions(
            //     height: MediaQuery.of(context).size.height * 0.35,
            //     autoPlay: true,
            //     autoPlayInterval: Duration(seconds: 2),
            //   ),
            //   itemBuilder: (BuildContext context, int index, int realIndex) {
            //     return Container(
            //       margin: EdgeInsets.all(10.0),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage(imagesCrs[index]),
            //           fit: BoxFit.cover,
            //         ),
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //     );
            //   },
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/bank/bank_0.png',
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            //ส่วนของ ฃื่อร้าน โดยใฃ้ listview ฃื่อ cakedata
            Expanded(
              child: ListView.separated(
                itemCount: Hotdata.length,
                separatorBuilder: (context, index) => Divider(
                  color: const Color.fromARGB(255, 51, 51, 51),
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        Hotdata[index].image1,
                      ),
                    ),
                    trailing: Icon(
                      Icons.phone_outlined,
                      color: const Color.fromARGB(255, 36, 36, 36),
                    ),
                    title: Text(
                      Hotdata[index].name,
                    ),
                    subtitle: Text(
                      Hotdata[index].phone,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
