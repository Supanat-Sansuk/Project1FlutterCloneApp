import 'package:flutter/material.dart';
import 'package:project_1/constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
            backgroundColor: bgSecondaryColor,
            radius: 25,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/my-profile.jpg'),
              radius: 22,
            )),
        CircleAvatar(
          backgroundColor: bgPrimaryColor,
          radius: 10,
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(
              Icons.edit,
              size: 12,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
