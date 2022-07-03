import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red,
                    Colors.amber,
                  ],
                ),
              ),
            ),
            Container(
              width: 95,
              height: 95,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://scontent.fcgk3-1.fna.fbcdn.net/v/t39.30808-6/276134885_5039583986103565_6561059216942357195_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHVHkjop6p8tJ0fGzCu_uNkcfeXpvg969lx95em-D3r2V7NFUShSTgRi7Dwo8-A87Vp1Gok0AR0Z9CipZVL1937&_nc_ohc=C_oods3wSu4AX8b0UAm&tn=rutDsRCFhExKSoiz&_nc_zt=23&_nc_ht=scontent.fcgk3-1.fna&oh=00_AT-N0RqCIlZANjmdVlF9q_Lc7MTeyFaG34TxD9qIFkYGMw&oe=62C5BEE8'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey[300],
              ),
            ),
          ],
        )
      ],
    );
  }
}
