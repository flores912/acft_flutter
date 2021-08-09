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

  Event(
      this.title,
      this.description,
      this.videoId,
      this.fieldTest,
      this.fitnessComponents,
      this.standardEquipment,
      this.eventImage,
      this.minValue,
      this.maxValue);

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
    if (pounds == 340) {
      score = 100;
    }

    return score;
  }
}
