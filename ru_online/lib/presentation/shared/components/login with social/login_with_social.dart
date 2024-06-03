import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWithSocial extends StatelessWidget {
  const LoginWithSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            icon: SvgPicture.asset('assets/images/googlelogo.svg'),
            iconSize: 40,
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            icon: SvgPicture.asset('assets/images/facebooklogo.svg'),
            iconSize: 40,
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            icon: SvgPicture.asset('assets/images/applelogo.svg'),
            iconSize: 40,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
