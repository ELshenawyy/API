import 'package:flutter/material.dart';
import 'package:flutter_bloc_breakingbad/constants/my_colors.dart';
import 'package:flutter_bloc_breakingbad/data/models/characters.dart';

 class CharacterItem extends StatefulWidget {
  final  Results character;

  const CharacterItem({Key? key, required this.character}) : super(key: key);

  @override
  State<CharacterItem> createState() => _CharacterItemState();
}

class _CharacterItemState extends State<CharacterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: MyColors.myBlack,
          alignment: Alignment.bottomCenter,
          child: Text(
            '${widget.character.name}',
            style: const TextStyle(
              height: 1.3,
              fontSize: 16,
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        child: Container(
          color: MyColors.myGrey,
          child: widget.character.image!.isNotEmpty
              ? FadeInImage.assetNetwork(
                  width: double.infinity,
                  height: double.infinity,
                  placeholder: 'assets/images/pic3 - Copy.jpg',
                  image: widget.character.image!,
                  fit: BoxFit.cover,
                )
              : Image.asset("assets/images/pic3 - Copy.jpg"),
        ),
      ),
    );
  }
}
