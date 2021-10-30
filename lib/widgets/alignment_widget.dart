import 'package:flutter/material.dart';
import 'package:superheroes/model/alignment_info.dart';

class AlignmentWidget extends StatelessWidget {
  final AlignmentInfo alignmentInfo;
  final BorderRadius borderRadius;

  const AlignmentWidget({
    Key? key,
    required this.alignmentInfo,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Container(
        height: 24,
        width: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: alignmentInfo.color,
          borderRadius: borderRadius,
        ),
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Text(
          alignmentInfo.name.toUpperCase(),
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 10),
        ),
      ),
    );
  }
}
