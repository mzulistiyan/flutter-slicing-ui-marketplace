import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_ordo/shared/theme.dart';
import 'package:flutter_slicing_ui_ordo/widget/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Chekout extends StatefulWidget {
  const Chekout({Key? key}) : super(key: key);

  @override
  State<Chekout> createState() => _ChekoutState();
}

class _ChekoutState extends State<Chekout> {
  List images = [
    'assets/image1.png',
    'assets/image3.png',
  ];
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(left: 25, right: 25, top: 70, bottom: 0),
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/icon_back.png',
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Checkout',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: blueSecoundColor),
            ),
          ],
        ),
      );
    }

    Widget catatan() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        padding:
            const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 20),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Catatan Pesanan',
                style: GoogleFonts.poppins(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextFormField(
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "Ketik disini...",
                  hintStyle: greyTextStyle,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: greyColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: greyColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget detailPembayaran() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tas Gucci',
                    style: blackTextStyle.copyWith(fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '(Qty.1)',
                        style: blackTextStyle,
                      ),
                      Text(
                        'Rp 75.000',
                        style: blackTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tas Eiger',
                    style: blackTextStyle.copyWith(fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '(Qty.1)',
                        style: blackTextStyle,
                      ),
                      Text(
                        'Rp 75.000',
                        style: blackTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ongkos Kirim',
                        style: blackTextStyle,
                      ),
                      Text(
                        'Rp 10.000',
                        style: blackTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 15),
              height: 1,
              decoration: const BoxDecoration(
                color: Color(0xffE6E6E6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                ),
                Text(
                  'Rp 450.000',
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: bluePrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Waktu Pengantaran',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              width: double.infinity,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: bluePrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alamat Pengiriman',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 80,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: greyColor,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.',
                    style: greenTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                  textColor: whiteColor,
                  tittle: 'Bayar Sekarang',
                  color: bluePrimaryColor,
                  onPressed: () {}),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: header(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    NeverScrollableScrollPhysics();
                    return Dismissible(
                      key: Key(index.toString()),
                      onDismissed: (direction) {},
                      background: Container(
                        margin: EdgeInsets.only(left: 230),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 50)),
                            Image.asset(
                              'assets/trash.png',
                              width: 60,
                              height: 60,
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30),
                              width: double.infinity,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: greyColor,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        images[index],
                                        height: 70,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Text(
                                              'Tas Gucci',
                                              style: blackTextStyle.copyWith(
                                                  fontWeight: semiBold),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Container(
                                            width: 40,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: bluePrimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '- 2 +',
                                                style: whiteTextStyle.copyWith(
                                                    fontWeight: medium,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 20),
                                            child: Text(
                                              'Rp 75.000',
                                              style:
                                                  blueSecoundTextStyle.copyWith(
                                                      fontWeight: semiBold),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Container(
                                            width: 80,
                                            height: 18,
                                            decoration: BoxDecoration(
                                              color: blueSecoundColor,
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Image.asset(
                                                  'assets/create.png',
                                                  width: 18,
                                                  height: 18,
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Center(
                                                  child: Text(
                                                    'Catatan',
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                            fontWeight:
                                                                semiBold,
                                                            fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 5),
                              padding: EdgeInsets.only(
                                  left: 12, right: 12, top: 10, bottom: 10),
                              width: double.infinity,
                              height: 120,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Catatan Item',
                                      style: GoogleFonts.poppins(
                                          color: Color(0xff808080),
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      maxLines: null,
                                      expands: true,
                                      textAlignVertical: TextAlignVertical.top,
                                      decoration: InputDecoration(
                                        hintText: "Ketik disini...",
                                        hintStyle: greyTextStyle,
                                        fillColor: Colors.white,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: Color(0xffCDCDCD)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: Color(0xffCDCDCD)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: catatan(),
          ),
          SliverToBoxAdapter(
            child: detailPembayaran(),
          ),
        ],
      ),
    );
  }
}
