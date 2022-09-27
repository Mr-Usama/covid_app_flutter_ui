import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/const.dart';

class MainRow extends StatelessWidget {
  final String svgPath1, svgPath2, svgPath3;
  final String text1, text2, text3;

  const MainRow(this.svgPath1, this.svgPath2, this.svgPath3,this.text1,this.text2,this.text3, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 90,
                width: 80,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: SvgPicture.asset(
                  svgPath1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text1,
                style: Constants.bodyText1,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 90,
                width: 80,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: SvgPicture.asset(
                  svgPath2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text2,
                style: Constants.bodyText1,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 90,
                width: 80,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: SvgPicture.asset(
                  svgPath3,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text3,
                style: Constants.bodyText1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
