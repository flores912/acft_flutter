import 'package:flutter/material.dart';

class Event {
  final String title;
  final String description;
  final String videoId;
  final String fieldTest;
  final String fitnessComponents;
  final String standardEquipment;
  final String eventImage;
  final dynamic maxValue;
  final dynamic minValue;

 const Event(
      this.title,
      this.description,
      this.videoId,
      this.fieldTest,
      this.fitnessComponents,
      this.standardEquipment,
      this.eventImage,
      this.minValue,
      this.maxValue);

 //TODO: INCLUDE LOGIC FOR RAW SCORES ABOVE MAX.

  int calculateMDLScore(int pounds) {
    int score = 0;
    if (pounds <= 80) {
      score = 0;
    }
    if (pounds >= 90 && pounds <= 99) {
      score = 10;
    }
    if (pounds >= 100 && pounds <= 109) {
      score = 20;
    }
    if (pounds >= 110 && pounds <= 119) {
      score = 30;
    }
    if (pounds >= 120 && pounds <= 129) {
      score = 40;
    }
    if (pounds >= 130 && pounds <= 139) {
      score = 50;
    }
    if (pounds >= 140 && pounds <= 149) {
      score = 60;
    }
    if (pounds >= 150 && pounds <= 159) {
      score = 62;
    }
    if (pounds >= 160 && pounds <= 169) {
      score = 63;
    }
    if (pounds >= 170 && pounds <= 179) {
      score = 64;
    }
    if (pounds >= 180 && pounds <= 189) {
      score = 65;
    }
    if (pounds >= 190 && pounds <= 199) {
      score = 68;
    }
    if (pounds >= 200 && pounds <= 209) {
      score = 70;
    }
    if (pounds >= 210 && pounds <= 219) {
      score = 72;
    }
    if (pounds >= 220 && pounds <= 229) {
      score = 74;
    }
    if (pounds >= 230 && pounds <= 239) {
      score = 76;
    }
    if (pounds >= 240 && pounds <= 249) {
      score = 78;
    }
    if (pounds >= 250 && pounds <= 259) {
      score = 80;
    }
    if (pounds >= 260 && pounds <= 269) {
      score = 82;
    }
    if (pounds >= 270 && pounds <= 279) {
      score = 84;
    }
    if (pounds >= 280 && pounds <= 289) {
      score = 86;
    }
    if (pounds >= 290 && pounds <= 299) {
      score = 88;
    }
    if (pounds >= 300 && pounds <= 309) {
      score = 90;
    }
    if (pounds >= 310 && pounds <= 319) {
      score = 92;
    }
    if (pounds >= 320 && pounds <= 329) {
      score = 94;
    }
    if (pounds >= 330 && pounds <= 339) {
      score = 97;
    }
    if (pounds >= 340) {
      score = 100;
    }

    return score;
  }
  int calculateSPT(double distance){
    int score = 0 ;
    if (distance <= 3.3) {
      score = 0;
    }
    if (distance == 3.4 ) {
      score = 5;
    }
    if (distance == 3.5 ) {
      score = 10;
    }
    if (distance == 3.6 ) {
      score = 15;
    }
    if (distance == 3.7 ) {
      score = 20;
    }
    if (distance == 3.8 ) {
      score = 25;
    }
    if (distance == 3.9 ) {
      score = 30;
    }
    if (distance == 4.0 ) {
      score = 35;
    }
    if (distance == 4.1) {
      score = 40;
    }
    if (distance == 4.2 ) {
      score = 45;
    }
    if (distance == 4.3 ) {
      score = 50;
    }
    if (distance == 4.4 ) {
      score = 55;
    }
    if (distance == 4.5 ) {
      score = 60;
    }
    if (distance > 4.5 && distance <= 4.9 ) {
      score = 61;
    }
    if (distance > 4.9 && distance <= 5.4 ) {
      score = 62;
    }
    if (distance > 5.4 && distance <= 5.8 ) {
      score = 63;
    }
    if (distance > 5.8 && distance <= 6.2 ) {
      score = 64;
    }
    if (distance > 6.2 && distance <= 6.5 ) {
      score = 65;
    }
    if (distance > 6.5 && distance <= 6.8 ) {
      score = 66;
    }
    if (distance > 6.8 && distance <= 7.1 ) {
      score = 67;
    }
    if (distance > 7.1 && distance <= 7.5 ) {
      score = 68;
    }
    if (distance > 7.5 && distance <= 7.8 ) {
      score = 69;
    }
    if (distance > 7.8 && distance <= 8.0 ) {
      score = 70;
    }
    if (distance > 8.0 && distance <= 8.2 ) {
      score = 71;
    }
    if (distance > 8.2 && distance <= 8.3 ) {
      score = 72;
    }
    if (distance > 8.3 && distance <= 8.5 ) {
      score = 73;
    }
    if (distance > 8.5 && distance <= 8.6 ) {
      score = 74;
    }
    if (distance > 8.6 && distance <= 8.8 ) {
      score = 75;
    }
    if (distance > 8.8 && distance <= 8.9 ) {
      score = 76;
    }
    if (distance > 8.9 && distance <= 9.1 ) {
      score = 77;
    }
    if (distance > 9.1 && distance <= 9.2 ) {
      score = 78;
    }
    if (distance > 9.2 && distance <= 9.4) {
      score = 79;
    }
    if (distance > 9.4 && distance <= 9.5 ) {
      score = 80;
    }
    if (distance > 9.5 && distance <= 9.7 ) {
      score = 81;
    }
    if (distance > 9.7 && distance <= 9.8 ) {
      score = 82;
    }
    if (distance > 9.8 && distance <= 10.0 ) {
      score = 83;
    }
    if (distance >10.0 && distance <= 10.1) {
      score = 84;
    }
    if (distance > 10.1 && distance <= 10.3 ) {
      score = 85;
    }
    if (distance > 10.3 && distance <= 10.4 ) {
      score = 86;
    }
    if (distance > 10.4 && distance <= 10.6 ) {
      score = 87;
    }
    if (distance > 10.6 && distance <= 10.7 ) {
      score = 88;
    }
    if (distance > 10.7 && distance <= 10.9 ) {
      score = 89;
    }
    if (distance > 10.9 && distance <= 11.0 ) {
      score = 90;
    }
    if (distance > 11.0 && distance <= 11.2 ) {
      score = 91;
    }
    if (distance > 11.2 && distance <= 11.3 ) {
      score = 92;
    }
    if (distance > 11.3 && distance <= 11.5) {
      score = 93;
    }
    if (distance > 11.5 && distance <= 11.6 ) {
      score = 94;
    }
    if (distance > 11.6 && distance <= 11.8 ) {
      score = 95;
    }
    if (distance > 11.8 && distance <= 11.9 ) {
      score = 96;
    }
    if (distance > 11.9 && distance <= 12.1 ) {
      score = 97;
    }
    if (distance > 12.1 && distance <= 12.2 ) {
      score = 98;
    }
    if (distance > 12.2 && distance <= 12.4 ) {
      score = 99;
    }
    if (distance >= 12.5 ) {
      score = 100;
    }
    return score;
  }


}
