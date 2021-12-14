import 'package:flutter/material.dart';
import 'package:flutter_slicing_ui_ordo/shared/theme.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String image;
  final int diskon;
  final Color backgroundColor;
  final String hargaAsli;
  final String hargaDiskon;
  const CustomCard({
    Key? key,
    required this.name,
    required this.diskon,
    required this.image,
    required this.backgroundColor,
    required this.hargaAsli,
    required this.hargaDiskon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 270,
      margin: EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  color: goldColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Image.asset(
                      'assets/star.png',
                      width: 13,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '5.0 | 200+ rating',
                      style: whiteTextStyle.copyWith(fontSize: 6),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Image.asset(
                    image,
                    height: 120,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          hargaAsli,
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: blueSecoundColor),
                        ),
                        const SizedBox(width: 29),
                        Container(
                          width: 60,
                          height: 15,
                          decoration: BoxDecoration(
                            color: bluePrimaryColor,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Center(
                            child: Text(
                              'Diskon ${diskon}%',
                              style: whiteTextStyle.copyWith(
                                  fontWeight: bold, fontSize: 9),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      hargaDiskon,
                      style: bluePrimaryTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
          )
        ],
      ),
    );
  }
}
