import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_ordo/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  List images = [
    'assets/image1.png',
    'assets/image3.png',
    'assets/image4.png',
  ];

  int currentIndex = 0;

  Widget build(BuildContext context) {
    Widget indicator(index) {
      return Container(
        width: currentIndex == index ? 13 : 16,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? blueSecoundColor : bluePrimaryColor,
        ),
      );
    }

    Widget customBottomNav() {
      return Container(
        width: double.infinity,
        height: 80,
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/assignment.png',
              width: 25,
              height: 25,
            ),
            Image.asset(
              'assets/swap_horiz.png',
              width: 25,
              height: 25,
            ),
            Image.asset(
              'assets/home1.png',
              width: 25,
              height: 25,
            ),
            Image.asset(
              'assets/assessment.png',
              width: 25,
              height: 25,
            ),
            Image.asset(
              'assets/person.png',
              width: 25,
              height: 25,
            ),
          ],
        ),
      );
    }

    int index = -1;
    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/icon_back.png',
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'PRODUK DETAIL',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: blueSecoundColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/blue_order.png',
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/red_notif.png',
                              width: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: images
                            .map(
                              (image) => Image.asset(image),
                            )
                            .toList(),
                        options: CarouselOptions(
                          initialPage: 0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          viewportFraction: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.map((e) {
                          index++;
                          return indicator(index);
                        }).toList(),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                    ),
                    boxShadow: [
                      BoxShadow(color: redColor, spreadRadius: 10),
                    ],
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Content Keterangan Harga & Diskon
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tas Gucci',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: greenColor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 85,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: goldColor,
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Barang Bekas',
                                            style: whiteTextStyle.copyWith(
                                                fontWeight: medium,
                                                fontSize: 9),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 50,
                                        height: 18,
                                        decoration: BoxDecoration(
                                          color: blueSecoundColor,
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Stok 100',
                                            style: whiteTextStyle.copyWith(
                                                fontWeight: medium,
                                                fontSize: 9),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Rp 126.000',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: blueSecoundColor,
                                            fontSize: 16,
                                            fontWeight: semiBold),
                                      ),
                                      Text(
                                        'Rp 100.500',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: bluePrimaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 75,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: bluePrimaryColor,
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Diskon 10%',
                                        style: whiteTextStyle.copyWith(
                                          fontWeight: bold,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(vertical: 15),
                          height: 1,
                          decoration: BoxDecoration(
                            color: Color(0xffE6E6E6),
                          ),
                        ),

                        //Content Vendor
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Vendor',
                                          style: greenTextStyle.copyWith(
                                              fontWeight: semiBold),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/vendor_logo.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Eiger Store',
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset('assets/star_blue.png'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '5.0 | 200 Terjual',
                                          style: blueSecoundTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: semiBold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        //Content Detail vendor
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deskripsi',
                                style: greenTextStyle.copyWith(
                                    fontWeight: semiBold),
                              ),
                              Text(
                                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
                                style:
                                    greenTextStyle.copyWith(fontWeight: medium),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),

                        //Ulasan Dan Penilaian
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ulasan dan Penilaian',
                                style: greenTextStyle.copyWith(
                                    fontWeight: semiBold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: double.infinity,
                                height: 120,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: greyColor,
                                      spreadRadius: -2.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/profile_pict_2.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Maude Hall',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                            fontWeight:
                                                                semiBold),
                                                  ),
                                                  Text(
                                                    '14 min',
                                                    style: greyTextStyle
                                                        .copyWith(fontSize: 10),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/star_red.png'),
                                              Text(
                                                '5.0',
                                                style: blackTextStyle.copyWith(
                                                    fontWeight: semiBold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Thats a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.',
                                      style:
                                          blackTextStyle.copyWith(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                height: 120,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      spreadRadius: -2.0,
                                      color: greyColor,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/profile_pict_1.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Ester Howard',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                            fontWeight:
                                                                semiBold),
                                                  ),
                                                  Text(
                                                    '14 min',
                                                    style: greyTextStyle
                                                        .copyWith(fontSize: 10),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/star_red.png'),
                                              Text(
                                                '5.0',
                                                style: blackTextStyle.copyWith(
                                                    fontWeight: semiBold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Thats a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.',
                                      style:
                                          blackTextStyle.copyWith(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
