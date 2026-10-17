// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/hot_line.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EmgUI extends StatefulWidget {
  const EmgUI({super.key});

  @override
  State<EmgUI> createState() => _EmgUIState();
}

class _EmgUIState extends State<EmgUI> {
  List imagesCrs = [
    'assets/images/emergency/emg_0.png',
  ];

  List Hotdata = [
    //ข้อมูลร้านเค้ก  ----------------------------------------
    Hotline(
      name: 'เหตุด่วนเหตุร้าย',
      image1: 'assets/images/emergency/emg_1.png',
      phone: '191',
    ),
    Hotline(
      name: 'ศูนย์ปลอดภัยคมนาคม',
      image1: 'assets/images/emergency/emg_6.png',
      phone: '1356',
    ),
    Hotline(
      name: 'หน่วยแพทย์กู้ชีพ',
      image1: 'assets/images/emergency/emg_7.png',
      phone: '1554',
    ),
    Hotline(
      name: 'ศูนย์เอราวัณ',
      image1: 'assets/images/emergency/emg_8.png',
      phone: '1646',
    ),
    Hotline(
      name: 'เจ็บป่วยฉุกเฉิน',
      image1: 'assets/images/emergency/emg_9.png',
      phone: '1669',
    ),
    Hotline(
      name: 'แจ้งคนหาย',
      image1: 'assets/images/emergency/emg_5.png',
      phone: '1300',
    ),
    Hotline(
      name: 'อุบัติเหตุทางน้ำ',
      image1: 'assets/images/emergency/emg_4.png',
      phone: '1196',
    ),
    Hotline(
      name: 'แจ้งไฟไหม้/สัตว์เข้าบ้าน',
      image1: 'assets/images/emergency/emg_2.png',
      phone: '199',
    ),
    Hotline(
      name: 'สายด่วนรถหาย',
      image1: 'assets/images/emergency/emg_1.png',
      phone: '1192',
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
              'assets/images/emergency/emg_0.png',
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
