import 'package:flutter/material.dart';
import 'package:Amisha/utils/localfiles.dart';
import 'package:Amisha/utils/themes.dart';
import 'package:Amisha/widgets/common_card.dart';

class HotelRoomList extends StatefulWidget {
  @override
  _HotelRoomListState createState() => _HotelRoomListState();
}

class _HotelRoomListState extends State<HotelRoomList> {
  List<String> photosList = [
    Localfiles.hotel_room_1,
    Localfiles.hotel_room_2,
    Localfiles.hotel_room_3,
    Localfiles.hotel_room_4,
    Localfiles.hotel_room_5,
    Localfiles.hotel_room_6,
    Localfiles.hotel_room_7,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 0, bottom: 8, right: 16, left: 16),
        itemCount: photosList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommonCard(
              color: AppTheme.backgroundColor,
              radius: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    photosList[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
