import 'package:flutter/material.dart';
import 'package:flutter_application_1/block.dart';
import 'package:flutter_application_1/coordinate.dart';
import 'package:flutter_application_1/main.dart';

class BlockT {
  static Block create() {
    Block block = Block();
    block.color = Colors.green;
    block.coordinatesBlockAreaStart = Coordinate(row: 0, col: COUNT_COL ~/ 2);
    block.currentCoordinatesOnGameArea = getCoordinateRotate1();
    block.updateCurrentCoordinateOnGameAreaWithStart();

    //coordinate about rotation in area 4x4
    block.coordinates.add(getCoordinateRotate1());
    block.coordinates.add(getCoordinateRotate2());
    block.coordinates.add(getCoordinateRotate3());
    block.coordinates.add(getCoordinateRotate4());

    return block;
  }

  static List<Coordinate> getCoordinateRotate1() {
    List<Coordinate> list = [];
    list.add(Coordinate(row: 0, col: 0));
    list.add(Coordinate(row: 0, col: 1));
    list.add(Coordinate(row: 0, col: 2));
    list.add(Coordinate(row: 1, col: 1));
    return list;
  }

  static List<Coordinate> getCoordinateRotate2() {
    List<Coordinate> list = [];
    list.add(Coordinate(row: 0, col: 1));
    list.add(Coordinate(row: 1, col: 1));
    list.add(Coordinate(row: 2 ,col: 1));
    list.add(Coordinate(row: 1, col: 0));
    return list;
  }
  static List<Coordinate> getCoordinateRotate3() {
    List<Coordinate> list = [];
    list.add(Coordinate(row: 0, col: 1));
    list.add(Coordinate(row: 1, col: 0));
    list.add(Coordinate(row: 1 ,col: 1));
    list.add(Coordinate(row: 1, col:2));
    return list;
  }
  static List<Coordinate> getCoordinateRotate4() {
    List<Coordinate> list = [];
    list.add(Coordinate(row: 0, col: 0));
    list.add(Coordinate(row: 1, col: 0));
    list.add(Coordinate(row: 2 ,col: 0));
    list.add(Coordinate(row: 1, col:1));
    return list;
  }


}
