import 'package:flutter/material.dart';
import 'package:flutter_application_1/block.dart';
import 'package:flutter_application_1/coordinate.dart';
import 'package:flutter_application_1/main.dart';

class BlockO {
  static Block create() {
    Block block = Block();
    block.color = Colors.blue;
    block.coordinatesBlockAreaStart = Coordinate(row: 0, col: COUNT_COL ~/ 2);
    block.currentCoordinatesOnGameArea = getCoordinateRotate1();
    block.updateCurrentCoordinateOnGameAreaWithStart();

    //coordinate about rotation in area 4x4
    block.coordinates.add(getCoordinateRotate1());

    return block;
  }

  static List<Coordinate> getCoordinateRotate1() {
    List<Coordinate> list = [];
    list.add(Coordinate(row: 0, col: 0));
    list.add(Coordinate(row: 0, col: 1));
    list.add(Coordinate(row: 1, col: 0));
    list.add(Coordinate(row: 1, col: 1));
    return list;
  }
}
