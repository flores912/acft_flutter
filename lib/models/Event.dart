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

  int calculateSPT(double distance) {
    int score = 0;
    if (distance <= 3.3) {
      score = 0;
    }
    if (distance == 3.4) {
      score = 5;
    }
    if (distance == 3.5) {
      score = 10;
    }
    if (distance == 3.6) {
      score = 15;
    }
    if (distance == 3.7) {
      score = 20;
    }
    if (distance == 3.8) {
      score = 25;
    }
    if (distance == 3.9) {
      score = 30;
    }
    if (distance == 4.0) {
      score = 35;
    }
    if (distance == 4.1) {
      score = 40;
    }
    if (distance == 4.2) {
      score = 45;
    }
    if (distance == 4.3) {
      score = 50;
    }
    if (distance == 4.4) {
      score = 55;
    }
    if (distance == 4.5) {
      score = 60;
    }
    if (distance > 4.5 && distance <= 4.9) {
      score = 61;
    }
    if (distance > 4.9 && distance <= 5.4) {
      score = 62;
    }
    if (distance > 5.4 && distance <= 5.8) {
      score = 63;
    }
    if (distance > 5.8 && distance <= 6.2) {
      score = 64;
    }
    if (distance > 6.2 && distance <= 6.5) {
      score = 65;
    }
    if (distance > 6.5 && distance <= 6.8) {
      score = 66;
    }
    if (distance > 6.8 && distance <= 7.1) {
      score = 67;
    }
    if (distance > 7.1 && distance <= 7.5) {
      score = 68;
    }
    if (distance > 7.5 && distance <= 7.8) {
      score = 69;
    }
    if (distance > 7.8 && distance <= 8.0) {
      score = 70;
    }
    if (distance > 8.0 && distance <= 8.2) {
      score = 71;
    }
    if (distance > 8.2 && distance <= 8.3) {
      score = 72;
    }
    if (distance > 8.3 && distance <= 8.5) {
      score = 73;
    }
    if (distance > 8.5 && distance <= 8.6) {
      score = 74;
    }
    if (distance > 8.6 && distance <= 8.8) {
      score = 75;
    }
    if (distance > 8.8 && distance <= 8.9) {
      score = 76;
    }
    if (distance > 8.9 && distance <= 9.1) {
      score = 77;
    }
    if (distance > 9.1 && distance <= 9.2) {
      score = 78;
    }
    if (distance > 9.2 && distance <= 9.4) {
      score = 79;
    }
    if (distance > 9.4 && distance <= 9.5) {
      score = 80;
    }
    if (distance > 9.5 && distance <= 9.7) {
      score = 81;
    }
    if (distance > 9.7 && distance <= 9.8) {
      score = 82;
    }
    if (distance > 9.8 && distance <= 10.0) {
      score = 83;
    }
    if (distance > 10.0 && distance <= 10.1) {
      score = 84;
    }
    if (distance > 10.1 && distance <= 10.3) {
      score = 85;
    }
    if (distance > 10.3 && distance <= 10.4) {
      score = 86;
    }
    if (distance > 10.4 && distance <= 10.6) {
      score = 87;
    }
    if (distance > 10.6 && distance <= 10.7) {
      score = 88;
    }
    if (distance > 10.7 && distance <= 10.9) {
      score = 89;
    }
    if (distance > 10.9 && distance <= 11.0) {
      score = 90;
    }
    if (distance > 11.0 && distance <= 11.2) {
      score = 91;
    }
    if (distance > 11.2 && distance <= 11.3) {
      score = 92;
    }
    if (distance > 11.3 && distance <= 11.5) {
      score = 93;
    }
    if (distance > 11.5 && distance <= 11.6) {
      score = 94;
    }
    if (distance > 11.6 && distance <= 11.8) {
      score = 95;
    }
    if (distance > 11.8 && distance <= 11.9) {
      score = 96;
    }
    if (distance > 11.9 && distance <= 12.1) {
      score = 97;
    }
    if (distance > 12.1 && distance <= 12.2) {
      score = 98;
    }
    if (distance > 12.2 && distance <= 12.4) {
      score = 99;
    }
    if (distance >= 12.5) {
      score = 100;
    }
    return score;
  }

  int calculateHRP(int reps) {
    int score = 0;
    //logic
    if (reps == 0) {
      score = 0;
    }
    if (reps == 1) {
      score = 15;
    }
    if (reps == 2) {
      score = 20;
    }
    if (reps == 3) {
      score = 25;
    }
    if (reps == 4) {
      score = 30;
    }
    if (reps == 5) {
      score = 35;
    }
    if (reps == 6) {
      score = 40;
    }
    if (reps == 7) {
      score = 45;
    }
    if (reps == 8) {
      score = 50;
    }
    if (reps == 9) {
      score = 55;
    }
    if (reps == 10 && reps == 11) {
      score = 60;
    }
    if (reps == 12 && reps == 13) {
      score = 61;
    }
    if (reps == 14 && reps == 15) {
      score = 62;
    }
    if (reps == 16 && reps == 17) {
      score = 63;
    }
    if (reps == 18 && reps == 19) {
      score = 64;
    }
    if (reps == 20 && reps == 21) {
      score = 65;
    }
    if (reps == 22 && reps == 23) {
      score = 66;
    }
    if (reps == 24 && reps == 25) {
      score = 67;
    }
    if (reps == 26 && reps == 27) {
      score = 68;
    }
    if (reps == 28 && reps == 29) {
      score = 69;
    }
    if (reps == 30) {
      score = 70;
    }
    if (reps == 31) {
      score = 71;
    }
    if (reps == 32) {
      score = 72;
    }
    if (reps == 33) {
      score = 73;
    }
    if (reps == 34) {
      score = 74;
    }
    if (reps == 35) {
      score = 75;
    }
    if (reps == 36) {
      score = 76;
    }
    if (reps == 37) {
      score = 77;
    }
    if (reps == 38) {
      score = 78;
    }
    if (reps == 39) {
      score = 79;
    }
    if (reps == 40) {
      score = 80;
    }
    if (reps == 41) {
      score = 81;
    }
    if (reps == 42) {
      score = 82;
    }
    if (reps == 43) {
      score = 83;
    }
    if (reps == 44) {
      score = 84;
    }
    if (reps == 45) {
      score = 85;
    }
    if (reps == 46) {
      score = 86;
    }
    if (reps == 47) {
      score = 87;
    }
    if (reps == 48) {
      score = 88;
    }
    if (reps == 49) {
      score = 89;
    }
    if (reps == 50) {
      score = 90;
    }
    if (reps == 51) {
      score = 91;
    }
    if (reps == 52) {
      score = 92;
    }
    if (reps == 53) {
      score = 93;
    }
    if (reps == 54) {
      score = 94;
    }
    if (reps == 55) {
      score = 95;
    }
    if (reps == 56) {
      score = 96;
    }
    if (reps == 57) {
      score = 97;
    }
    if (reps == 58) {
      score = 98;
    }
    if (reps == 59) {
      score = 99;
    }
    if (reps >= 60) {
      score = 100;
    }
    return score;
  }

  int calculateSDC(Duration duration) {
    int score = 0;
    if (duration >= Duration(minutes: 3, seconds: 35)) {
      score = 0;
    }
    if (duration == Duration(minutes: 3, seconds: 34)) {
      score = 2;
    }
    if (duration == Duration(minutes: 3, seconds: 33)) {
      score = 4;
    }
    if (duration == Duration(minutes: 3, seconds: 32)) {
      score = 6;
    }
    if (duration == Duration(minutes: 3, seconds: 31)) {
      score = 8;
    }
    if (duration == Duration(minutes: 3, seconds: 30)) {
      score = 10;
    }
    if (duration == Duration(minutes: 3, seconds: 29)) {
      score = 12;
    }
    if (duration == Duration(minutes: 3, seconds: 28)) {
      score = 14;
    }
    if (duration == Duration(minutes: 3, seconds: 27)) {
      score = 16;
    }
    if (duration == Duration(minutes: 3, seconds: 26)) {
      score = 18;
    }
    if (duration == Duration(minutes: 3, seconds: 25)) {
      score = 20;
    }
    if (duration == Duration(minutes: 3, seconds: 24)) {
      score = 22;
    }
    if (duration == Duration(minutes: 3, seconds: 23)) {
      score = 24;
    }
    if (duration == Duration(minutes: 3, seconds: 22)) {
      score = 26;
    }
    if (duration == Duration(minutes: 3, seconds: 21)) {
      score = 28;
    }
    if (duration == Duration(minutes: 3, seconds: 20)) {
      score = 30;
    }
    if (duration == Duration(minutes: 3, seconds: 19)) {
      score = 32;
    }
    if (duration == Duration(minutes: 3, seconds: 18)) {
      score = 34;
    }
    if (duration == Duration(minutes: 3, seconds: 17)) {
      score = 36;
    }
    if (duration == Duration(minutes: 3, seconds: 16)) {
      score = 38;
    }
    if (duration == Duration(minutes: 3, seconds: 15)) {
      score = 40;
    }
    if (duration == Duration(minutes: 3, seconds: 14)) {
      score = 42;
    }
    if (duration == Duration(minutes: 3, seconds: 13)) {
      score = 44;
    }
    if (duration == Duration(minutes: 3, seconds: 12)) {
      score = 46;
    }
    if (duration == Duration(minutes: 3, seconds: 11)) {
      score = 48;
    }
    if (duration == Duration(minutes: 3, seconds: 10)) {
      score = 50;
    }
    if (duration == Duration(minutes: 3, seconds: 9)) {
      score = 51;
    }
    if (duration == Duration(minutes: 3, seconds: 8)) {
      score = 52;
    }
    if (duration == Duration(minutes: 3, seconds: 7)) {
      score = 53;
    }
    if (duration == Duration(minutes: 3, seconds: 6)) {
      score = 54;
    }
    if (duration == Duration(minutes: 3, seconds: 5)) {
      score = 55;
    }
    if (duration == Duration(minutes: 3, seconds: 4)) {
      score = 56;
    }
    if (duration == Duration(minutes: 3, seconds: 3)) {
      score = 57;
    }
    if (duration == Duration(minutes: 3, seconds: 2)) {
      score = 58;
    }
    if (duration == Duration(minutes: 3, seconds: 1)) {
      score = 59;
    }
    if (duration == Duration(minutes: 3, seconds: 0)) {
      score = 60;
    }
    if (duration >= Duration(minutes: 3, seconds: 35)) {
      score = 0;
    }
    if (duration == Duration(minutes: 3, seconds: 34)) {
      score = 2;
    }
    if (duration == Duration(minutes: 3, seconds: 33)) {
      score = 4;
    }
    if (duration == Duration(minutes: 3, seconds: 32)) {
      score = 6;
    }
    if (duration == Duration(minutes: 3, seconds: 31)) {
      score = 8;
    }
    if (duration == Duration(minutes: 3, seconds: 30)) {
      score = 10;
    }
    if (duration == Duration(minutes: 3, seconds: 29)) {
      score = 12;
    }
    if (duration == Duration(minutes: 3, seconds: 28)) {
      score = 14;
    }
    if (duration == Duration(minutes: 3, seconds: 27)) {
      score = 16;
    }
    if (duration == Duration(minutes: 3, seconds: 26)) {
      score = 18;
    }
    if (duration == Duration(minutes: 3, seconds: 25)) {
      score = 20;
    }
    if (duration == Duration(minutes: 3, seconds: 24)) {
      score = 22;
    }
    if (duration == Duration(minutes: 3, seconds: 23)) {
      score = 24;
    }
    if (duration == Duration(minutes: 3, seconds: 22)) {
      score = 26;
    }
    if (duration == Duration(minutes: 3, seconds: 21)) {
      score = 28;
    }
    if (duration == Duration(minutes: 3, seconds: 20)) {
      score = 30;
    }
    if (duration == Duration(minutes: 3, seconds: 19)) {
      score = 32;
    }
    if (duration == Duration(minutes: 3, seconds: 18)) {
      score = 34;
    }
    if (duration == Duration(minutes: 3, seconds: 17)) {
      score = 36;
    }
    if (duration == Duration(minutes: 3, seconds: 16)) {
      score = 38;
    }
    if (duration == Duration(minutes: 3, seconds: 15)) {
      score = 40;
    }
    if (duration == Duration(minutes: 3, seconds: 14)) {
      score = 42;
    }
    if (duration == Duration(minutes: 3, seconds: 13)) {
      score = 44;
    }
    if (duration == Duration(minutes: 3, seconds: 12)) {
      score = 46;
    }
    if (duration == Duration(minutes: 3, seconds: 11)) {
      score = 48;
    }
    if (duration == Duration(minutes: 3, seconds: 10)) {
      score = 50;
    }
    if (duration == Duration(minutes: 3, seconds: 9)) {
      score = 51;
    }
    if (duration == Duration(minutes: 3, seconds: 8)) {
      score = 52;
    }
    if (duration == Duration(minutes: 3, seconds: 7)) {
      score = 53;
    }
    if (duration == Duration(minutes: 3, seconds: 6)) {
      score = 54;
    }
    if (duration == Duration(minutes: 3, seconds: 5)) {
      score = 55;
    }
    if (duration == Duration(minutes: 3, seconds: 4)) {
      score = 56;
    }
    if (duration == Duration(minutes: 3, seconds: 3)) {
      score = 57;
    }
    if (duration == Duration(minutes: 3, seconds: 2)) {
      score = 58;
    }
    if (duration == Duration(minutes: 3, seconds: 1)) {
      score = 59;
    }
    if (duration == Duration(minutes: 3, seconds: 0)) {
      score = 60;
    }

    if (duration <= Duration(minutes: 2, seconds: 50) &&
        duration > Duration(minutes: 2, seconds: 45)) {
      score = 61;
    }
    if (duration <= Duration(minutes: 2, seconds: 45) &&
        duration > Duration(minutes: 2, seconds: 40)) {
      score = 62;
    }
    if (duration <= Duration(minutes: 2, seconds: 40) &&
        duration > Duration(minutes: 2, seconds: 35)) {
      score = 63;
    }
    if (duration <= Duration(minutes: 2, seconds: 35) &&
        duration > Duration(minutes: 2, seconds: 30)) {
      score = 64;
    }
    if (duration <= Duration(minutes: 2, seconds: 30) &&
        duration > Duration(minutes: 2, seconds: 26)) {
      score = 65;
    }
    if (duration <= Duration(minutes: 2, seconds: 26) &&
        duration > Duration(minutes: 2, seconds: 22)) {
      score = 66;
    }
    if (duration <= Duration(minutes: 2, seconds: 22) &&
        duration > Duration(minutes: 2, seconds: 18)) {
      score = 67;
    }
    if (duration <= Duration(minutes: 2, seconds: 18) &&
        duration > Duration(minutes: 2, seconds: 14)) {
      score = 68;
    }
    if (duration <= Duration(minutes: 2, seconds: 14) &&
        duration > Duration(minutes: 2, seconds: 10)) {
      score = 69;
    }
    if (duration == Duration(minutes: 2, seconds: 10)) {
      score = 70;
    }
    if (duration == Duration(minutes: 2, seconds: 9)) {
      score = 71;
    }
    if (duration == Duration(minutes: 2, seconds: 8)) {
      score = 72;
    }
    if (duration == Duration(minutes: 2, seconds: 7)) {
      score = 73;
    }
    if (duration == Duration(minutes: 2, seconds: 6)) {
      score = 74;
    }
    if (duration == Duration(minutes: 2, seconds: 5)) {
      score = 75;
    }
    if (duration == Duration(minutes: 2, seconds: 4)) {
      score = 76;
    }
    if (duration == Duration(minutes: 2, seconds: 3)) {
      score = 77;
    }
    if (duration == Duration(minutes: 2, seconds: 2)) {
      score = 78;
    }
    if (duration == Duration(minutes: 2, seconds: 1)) {
      score = 79;
    }
    if (duration == Duration(minutes: 2)) {
      score = 80;
    }
    if (duration == Duration(minutes: 1, seconds: 59)) {
      score = 81;
    }
    if (duration == Duration(minutes: 1, seconds: 58)) {
      score = 82;
    }
    if (duration == Duration(minutes: 1, seconds: 57)) {
      score = 83;
    }
    if (duration == Duration(minutes: 1, seconds: 56)) {
      score = 84;
    }
    if (duration == Duration(minutes: 1, seconds: 55)) {
      score = 85;
    }
    if (duration == Duration(minutes: 1, seconds: 54)) {
      score = 86;
    }
    if (duration == Duration(minutes: 1, seconds: 53)) {
      score = 87;
    }
    if (duration == Duration(minutes: 1, seconds: 52)) {
      score = 88;
    }
    if (duration == Duration(minutes: 1, seconds: 51)) {
      score = 89;
    }
    if (duration == Duration(minutes: 1, seconds: 50)) {
      score = 90;
    }
    if (duration == Duration(minutes: 1, seconds: 49)) {
      score = 91;
    }
    if (duration == Duration(minutes: 1, seconds: 48)) {
      score = 92;
    }
    if (duration == Duration(minutes: 1, seconds: 47)) {
      score = 93;
    }
    if (duration == Duration(minutes: 1, seconds: 46)) {
      score = 94;
    }
    if (duration <= Duration(minutes: 1, seconds: 45) &&
        duration > Duration(minutes: 1, seconds: 43)) {
      score = 95;
    }
    if (duration <= Duration(minutes: 1, seconds: 43) &&
        duration > Duration(minutes: 1, seconds: 41)) {
      score = 96;
    }
    if (duration <= Duration(minutes: 1, seconds: 41) &&
        duration > Duration(minutes: 1, seconds: 39)) {
      score = 97;
    }
    if (duration <= Duration(minutes: 1, seconds: 39) &&
        duration > Duration(minutes: 1, seconds: 36)) {
      score = 98;
    }
    if (duration <= Duration(minutes: 1, seconds: 36) &&
        duration > Duration(minutes: 1, seconds: 33)) {
      score = 99;
    }
    if (duration <= Duration(minutes: 1, seconds: 33)) {
      score = 100;
    }
    return score;
  }

  int calculateLTK(int reps) {
    int score = 0;
    //logic
    if (reps == 0) {
      score = 0;
    }
    if (reps == 1) {
      score = 60;
    }
    if (reps == 2) {
      score = 62;
    }
    if (reps == 3) {
      score = 65;
    }
    if (reps == 4) {
      score = 68;
    }
    if (reps == 5) {
      score = 70;
    }
    if (reps == 6) {
      score = 72;
    }
    if (reps == 7) {
      score = 74;
    }
    if (reps == 8) {
      score = 76;
    }
    if (reps == 9) {
      score = 78;
    }
    if (reps == 10) {
      score = 80;
    }
    if (reps == 11) {
      score = 82;
    }
    if (reps == 12) {
      score = 84;
    }
    if (reps == 13) {
      score = 86;
    }
    if (reps == 14) {
      score = 88;
    }
    if (reps == 15) {
      score = 90;
    }
    if (reps == 16) {
      score = 92;
    }
    if (reps == 17) {
      score = 94;
    }
    if (reps == 18) {
      score = 96;
    }
    if (reps == 19) {
      score = 98;
    }
    if (reps >= 20) {
      score = 100;
    }
    return score;
  }

  int calculatePLK(Duration duration) {
    int score = 0;
    if (duration > Duration(minutes: 2, seconds: 3)) {
      score = 0;
    }
    if (duration >= Duration(minutes: 2, seconds: 3) &&
        duration < Duration(minutes: 2, seconds: 6)) {
      score = 58;
    }
    if (duration >= Duration(minutes: 2, seconds: 6) &&
        duration < Duration(minutes: 2, seconds: 9)) {
      score = 59;
    }
    if (duration >= Duration(minutes: 2, seconds: 9) &&
        duration < Duration(minutes: 2, seconds: 12)) {
      score = 60;
    }
    if (duration >= Duration(minutes: 2, seconds: 12) &&
        duration < Duration(minutes: 2, seconds: 16)) {
      score = 61;
    }
    if (duration >= Duration(minutes: 2, seconds: 16) &&
        duration < Duration(minutes: 2, seconds: 19)) {
      score = 62;
    }
    if (duration >= Duration(minutes: 2, seconds: 19) &&
        duration < Duration(minutes: 2, seconds: 22)) {
      score = 63;
    }
    if (duration >= Duration(minutes: 2, seconds: 22) &&
        duration < Duration(minutes: 2, seconds: 26)) {
      score = 64;
    }
    if (duration >= Duration(minutes: 2, seconds: 26) &&
        duration < Duration(minutes: 2, seconds: 29)) {
      score = 65;
    }
    if (duration >= Duration(minutes: 2, seconds: 29) &&
        duration < Duration(minutes: 2, seconds: 32)) {
      score = 66;
    }
    if (duration >= Duration(minutes: 2, seconds: 32) &&
        duration < Duration(minutes: 2, seconds: 35)) {
      score = 67;
    }
    if (duration >= Duration(minutes: 2, seconds: 35) &&
        duration < Duration(minutes: 2, seconds: 39)) {
      score = 68;
    }
    if (duration >= Duration(minutes: 2, seconds: 39) &&
        duration < Duration(minutes: 2, seconds: 42)) {
      score = 69;
    }
    if (duration >= Duration(minutes: 2, seconds: 42) &&
        duration < Duration(minutes: 2, seconds: 45)) {
      score = 70;
    }
    if (duration >= Duration(minutes: 2, seconds: 45) &&
        duration < Duration(minutes: 2, seconds: 49)) {
      score = 71;
    }
    if (duration >= Duration(minutes: 2, seconds: 49) &&
        duration < Duration(minutes: 2, seconds: 52)) {
      score = 72;
    }
    if (duration >= Duration(minutes: 2, seconds: 52) &&
        duration < Duration(minutes: 2, seconds: 55)) {
      score = 73;
    }
    if (duration >= Duration(minutes: 2, seconds: 55) &&
        duration < Duration(minutes: 2, seconds: 58)) {
      score = 74;
    }
    if (duration >= Duration(minutes: 3, seconds: 2) &&
        duration < Duration(minutes: 3, seconds: 12)) {
      score = 75;
    }
    if (duration >= Duration(minutes: 3, seconds: 5) &&
        duration < Duration(minutes: 3, seconds: 8)) {
      score = 76;
    }
    if (duration >= Duration(minutes: 3, seconds: 8) &&
        duration < Duration(minutes: 3, seconds: 12)) {
      score = 77;
    }
    if (duration >= Duration(minutes: 3, seconds: 8) &&
        duration < Duration(minutes: 3, seconds: 12)) {
      score = 78;
    }
    if (duration >= Duration(minutes: 3, seconds: 12) &&
        duration < Duration(minutes: 3, seconds: 15)) {
      score = 79;
    }
    if (duration >= Duration(minutes: 3, seconds: 15) &&
        duration < Duration(minutes: 3, seconds: 18)) {
      score = 80;
    }
    if (duration >= Duration(minutes: 3, seconds: 18) &&
        duration < Duration(minutes: 3, seconds: 21)) {
      score = 81;
    }
    if (duration >= Duration(minutes: 3, seconds: 21) &&
        duration < Duration(minutes: 3, seconds: 25)) {
      score = 82;
    }
    if (duration >= Duration(minutes: 3, seconds: 25) &&
        duration < Duration(minutes: 3, seconds: 28)) {
      score = 83;
    }
    if (duration >= Duration(minutes: 3, seconds: 28) &&
        duration < Duration(minutes: 3, seconds: 31)) {
      score = 84;
    }
    if (duration >= Duration(minutes: 3, seconds: 31) &&
        duration < Duration(minutes: 3, seconds: 35)) {
      score = 85;
    }
    if (duration >= Duration(minutes: 3, seconds: 35) &&
        duration < Duration(minutes: 3, seconds: 38)) {
      score = 86;
    }
    if (duration >= Duration(minutes: 3, seconds: 38) &&
        duration < Duration(minutes: 3, seconds: 41)) {
      score = 87;
    }
    if (duration >= Duration(minutes: 3, seconds: 41) &&
        duration < Duration(minutes: 3, seconds: 44)) {
      score = 88;
    }
    if (duration >= Duration(minutes: 3, seconds: 44) &&
        duration < Duration(minutes: 3, seconds: 48)) {
      score = 89;
    }
    if (duration >= Duration(minutes: 3, seconds: 48) &&
        duration < Duration(minutes: 3, seconds: 51)) {
      score = 90;
    }
    if (duration >= Duration(minutes: 3, seconds: 51) &&
        duration < Duration(minutes: 3, seconds: 54)) {
      score = 91;
    }
    if (duration >= Duration(minutes: 3, seconds: 54) &&
        duration < Duration(minutes: 3, seconds: 58)) {
      score = 92;
    }
    if (duration >= Duration(minutes: 3, seconds: 58) &&
        duration < Duration(minutes: 4, seconds: 1)) {
      score = 93;
    }
    if (duration >= Duration(minutes: 4, seconds: 1) &&
        duration < Duration(minutes: 4, seconds: 4)) {
      score = 94;
    }
    if (duration >= Duration(minutes: 4, seconds: 4) &&
        duration < Duration(minutes: 4, seconds: 7)) {
      score = 95;
    }
    if (duration >= Duration(minutes: 4, seconds: 7) &&
        duration < Duration(minutes: 4, seconds: 11)) {
      score = 96;
    }
    if (duration >= Duration(minutes: 4, seconds: 11) &&
        duration < Duration(minutes: 4, seconds: 14)) {
      score = 97;
    }
    if (duration >= Duration(minutes: 4, seconds: 14) &&
        duration < Duration(minutes: 4, seconds: 17)) {
      score = 98;
    }
    if (duration >= Duration(minutes: 4, seconds: 17) &&
        duration < Duration(minutes: 4, seconds: 20)) {
      score = 99;
    }
    if (duration > Duration(minutes: 4, seconds: 20)) {
      score = 100;
    }

    return score;
  }

  int calculate2MR(Duration duration) {
    int score = 0;
    if (duration <= Duration(minutes: 22, seconds: 48)) {
      score = 0;
    }
    if (duration <= Duration(minutes: 22, seconds: 46) &&
        duration > Duration(minutes: 22, seconds: 44)) {
      score = 1;
    }
    if (duration <= Duration(minutes: 22, seconds: 44) &&
        duration > Duration(minutes: 22, seconds: 42)) {
      score = 2;
    }
    if (duration <= Duration(minutes: 22, seconds: 42) &&
        duration > Duration(minutes: 22, seconds: 40)) {
      score = 3;
    }
    if (duration <= Duration(minutes: 22, seconds: 40) &&
        duration > Duration(minutes: 22, seconds: 39)) {
      score = 4;
    }
    if (duration <= Duration(minutes: 22, seconds: 39) &&
        duration > Duration(minutes: 22, seconds: 37)) {
      score = 5;
    }
    if (duration <= Duration(minutes: 22, seconds: 37) &&
        duration > Duration(minutes: 22, seconds: 35)) {
      score = 6;
    }
    if (duration <= Duration(minutes: 22, seconds: 35) &&
        duration > Duration(minutes: 22, seconds: 33)) {
      score = 7;
    }
    if (duration <= Duration(minutes: 22, seconds: 33) &&
        duration > Duration(minutes: 22, seconds: 31)) {
      score = 8;
    }
    if (duration <= Duration(minutes: 22, seconds: 31) &&
        duration > Duration(minutes: 22, seconds: 30)) {
      score = 9;
    }
    if (duration <= Duration(minutes: 22, seconds: 30) &&
        duration > Duration(minutes: 22, seconds: 28)) {
      score = 10;
    }
    if (duration <= Duration(minutes: 22, seconds: 28) &&
        duration > Duration(minutes: 22, seconds: 26)) {
      score = 11;
    }
    if (duration <= Duration(minutes: 22, seconds: 26) &&
        duration > Duration(minutes: 22, seconds: 24)) {
      score = 12;
    }
    if (duration <= Duration(minutes: 22, seconds: 24) &&
        duration > Duration(minutes: 22, seconds: 22)) {
      score = 13;
    }

    if (duration <= Duration(minutes: 22, seconds: 22) &&
        duration > Duration(minutes: 22, seconds: 21)) {
      score = 14;
    }
    if (duration <= Duration(minutes: 22, seconds: 21) &&
        duration > Duration(minutes: 22, seconds: 19)) {
      score = 15;
    }
    if (duration <= Duration(minutes: 22, seconds: 19) &&
        duration > Duration(minutes: 22, seconds: 17)) {
      score = 16;
    }
    if (duration <= Duration(minutes: 22, seconds: 17) &&
        duration > Duration(minutes: 22, seconds: 15)) {
      score = 17;
    }
    if (duration <= Duration(minutes: 22, seconds: 15) &&
        duration > Duration(minutes: 22, seconds: 13)) {
      score = 18;
    }
    if (duration <= Duration(minutes: 22, seconds: 13) &&
        duration > Duration(minutes: 22, seconds: 12)) {
      score = 19;
    }
    if (duration <= Duration(minutes: 22, seconds: 12) &&
        duration > Duration(minutes: 22, seconds: 10)) {
      score = 20;
    }
    if (duration <= Duration(minutes: 22, seconds: 10) &&
        duration > Duration(minutes: 22, seconds: 8)) {
      score = 21;
    }
    if (duration <= Duration(minutes: 22, seconds: 8) &&
        duration > Duration(minutes: 22, seconds: 6)) {
      score = 22;
    }
    if (duration <= Duration(minutes: 22, seconds: 6) &&
        duration > Duration(minutes: 22, seconds: 4)) {
      score = 23;
    }
    if (duration <= Duration(minutes: 22, seconds: 4) &&
        duration > Duration(minutes: 22, seconds: 3)) {
      score = 24;
    }
    if (duration <= Duration(minutes: 22, seconds: 3) &&
        duration > Duration(minutes: 22, seconds: 1)) {
      score = 25;
    }
    if (duration <= Duration(minutes: 22, seconds: 1) &&
        duration > Duration(minutes: 21, seconds: 59)) {
      score = 26;
    }
    if (duration <= Duration(minutes: 21, seconds: 59) &&
        duration > Duration(minutes: 21, seconds: 57)) {
      score = 27;
    }

    if (duration <= Duration(minutes: 21, seconds: 57) &&
        duration > Duration(minutes: 21, seconds: 55)) {
      score = 28;
    }
    if (duration <= Duration(minutes: 21, seconds: 55) &&
        duration > Duration(minutes: 21, seconds: 54)) {
      score = 29;
    }

    if (duration <= Duration(minutes: 21, seconds: 54) &&
        duration > Duration(minutes: 21, seconds: 52)) {
      score = 30;
    }
    if (duration <= Duration(minutes: 21, seconds: 52) &&
        duration > Duration(minutes: 21, seconds: 50)) {
      score = 31;
    }

    if (duration <= Duration(minutes: 21, seconds: 50) &&
        duration > Duration(minutes: 21, seconds: 48)) {
      score = 32;
    }
    if (duration <= Duration(minutes: 21, seconds: 48) &&
        duration > Duration(minutes: 21, seconds: 46)) {
      score = 33;
    }

    if (duration <= Duration(minutes: 21, seconds: 46) &&
        duration > Duration(minutes: 21, seconds: 45)) {
      score = 34;
    }
    if (duration <= Duration(minutes: 21, seconds: 45) &&
        duration > Duration(minutes: 21, seconds: 43)) {
      score = 35;
    }

    if (duration <= Duration(minutes: 21, seconds: 43) &&
        duration > Duration(minutes: 21, seconds: 41)) {
      score = 36;
    }
    if (duration <= Duration(minutes: 21, seconds: 41) &&
        duration > Duration(minutes: 21, seconds: 39)) {
      score = 37;
    }

    if (duration <= Duration(minutes: 21, seconds: 39) &&
        duration > Duration(minutes: 21, seconds: 37)) {
      score = 38;
    }
    if (duration <= Duration(minutes: 21, seconds: 37) &&
        duration > Duration(minutes: 21, seconds: 36)) {
      score = 39;
    }
    if (duration <= Duration(minutes: 21, seconds: 36) &&
        duration > Duration(minutes: 21, seconds: 34)) {
      score = 40;
    }
    if (duration <= Duration(minutes: 21, seconds: 34) &&
        duration > Duration(minutes: 21, seconds: 32)) {
      score = 41;
    }
    if (duration <= Duration(minutes: 21, seconds: 32) &&
        duration > Duration(minutes: 21, seconds: 30)) {
      score = 42;
    }
    if (duration <= Duration(minutes: 21, seconds: 30) &&
        duration > Duration(minutes: 21, seconds: 28)) {
      score = 43;
    }
    if (duration <= Duration(minutes: 21, seconds: 28) &&
        duration > Duration(minutes: 21, seconds: 27)) {
      score = 44;
    }
    if (duration <= Duration(minutes: 21, seconds: 27) &&
        duration > Duration(minutes: 21, seconds: 25)) {
      score = 45;
    }
    if (duration <= Duration(minutes: 21, seconds: 25) &&
        duration > Duration(minutes: 21, seconds: 23)) {
      score = 46;
    }
    if (duration <= Duration(minutes: 21, seconds: 23) &&
        duration > Duration(minutes: 21, seconds: 21)) {
      score = 47;
    }
    if (duration <= Duration(minutes: 21, seconds: 21) &&
        duration > Duration(minutes: 21, seconds: 19)) {
      score = 48;
    }
    if (duration <= Duration(minutes: 21, seconds: 19) &&
        duration > Duration(minutes: 21, seconds: 18)) {
      score = 49;
    }
    if (duration <= Duration(minutes: 21, seconds: 18) &&
        duration > Duration(minutes: 21, seconds: 16)) {
      score = 50;
    }
    if (duration <= Duration(minutes: 21, seconds: 16) &&
        duration > Duration(minutes: 21, seconds: 14)) {
      score = 51;
    }
    if (duration <= Duration(minutes: 21, seconds: 14) &&
        duration > Duration(minutes: 21, seconds: 12)) {
      score = 52;
    }
    if (duration <= Duration(minutes: 21, seconds: 12) &&
        duration > Duration(minutes: 21, seconds: 10)) {
      score = 53;
    }
    if (duration <= Duration(minutes: 21, seconds: 10) &&
        duration > Duration(minutes: 21, seconds: 9)) {
      score = 54;
    }
    if (duration <= Duration(minutes: 21, seconds: 9) &&
        duration > Duration(minutes: 21, seconds: 7)) {
      score = 55;
    }
    if (duration <= Duration(minutes: 21, seconds: 7) &&
        duration > Duration(minutes: 21, seconds: 5)) {
      score = 56;
    }
    if (duration <= Duration(minutes: 21, seconds: 5) &&
        duration > Duration(minutes: 21, seconds: 3)) {
      score = 57;
    }
    if (duration <= Duration(minutes: 21, seconds: 3) &&
        duration > Duration(minutes: 21, seconds: 1)) {
      score = 58;
    }
    if (duration <= Duration(minutes: 21, seconds: 1) &&
        duration > Duration(minutes: 21, seconds: 0)) {
      score = 59;
    }
    if (duration <= Duration(minutes: 21, seconds: 0) &&
        duration > Duration(minutes: 20, seconds: 36)) {
      score = 60;
    }

    if (duration <= Duration(minutes: 21, seconds: 0) &&
        duration > Duration(minutes: 20, seconds: 36)) {
      score = 60;
    }
    if (duration <= Duration(minutes: 20, seconds: 36) &&
        duration > Duration(minutes: 20, seconds: 12)) {
      score = 61;
    }
    if (duration <= Duration(minutes: 20, seconds: 12) &&
        duration > Duration(minutes: 19, seconds: 48)) {
      score = 62;
    }
    if (duration <= Duration(minutes: 19, seconds: 48) &&
        duration > Duration(minutes: 19, seconds: 24)) {
      score = 63;
    }
    if (duration <= Duration(minutes: 19, seconds: 24) &&
        duration > Duration(minutes: 19, seconds: 0)) {
      score = 64;
    }
    if (duration <= Duration(minutes: 19, seconds: 0) &&
        duration > Duration(minutes: 18, seconds: 48)) {
      score = 65;
    }
    if (duration <= Duration(minutes: 18, seconds: 48) &&
        duration > Duration(minutes: 18, seconds: 36)) {
      score = 66;
    }
    if (duration <= Duration(minutes: 18, seconds: 36) &&
        duration > Duration(minutes: 18, seconds: 24)) {
      score = 67;
    }
    if (duration <= Duration(minutes: 18, seconds: 24) &&
        duration > Duration(minutes: 18, seconds: 12)) {
      score = 68;
    }

    if (duration <= Duration(minutes: 18, seconds: 12) &&
        duration > Duration(minutes: 18, seconds: 0)) {
      score = 69;
    }
    if (duration <= Duration(minutes: 18, seconds: 0) &&
        duration > Duration(minutes: 17, seconds: 51)) {
      score = 70;
    }
    if (duration <= Duration(minutes: 17, seconds: 51) &&
        duration > Duration(minutes: 17, seconds: 42)) {
      score = 71;
    }
    if (duration <= Duration(minutes: 17, seconds: 42) &&
        duration > Duration(minutes: 17, seconds: 33)) {
      score = 72;
    }
    if (duration <= Duration(minutes: 17, seconds: 33) &&
        duration > Duration(minutes: 17, seconds: 24)) {
      score = 73;
    }
    if (duration <= Duration(minutes: 17, seconds: 24) &&
        duration > Duration(minutes: 17, seconds: 15)) {
      score = 74;
    }
    if (duration <= Duration(minutes: 17, seconds: 15) &&
        duration > Duration(minutes: 17, seconds: 6)) {
      score = 75;
    }
    if (duration <= Duration(minutes: 17, seconds: 6) &&
        duration > Duration(minutes: 16, seconds: 57)) {
      score = 76;
    }
    if (duration <= Duration(minutes: 16, seconds: 57) &&
        duration > Duration(minutes: 16, seconds: 48)) {
      score = 77;
    }
    if (duration <= Duration(minutes: 16, seconds: 48) &&
        duration > Duration(minutes: 16, seconds: 39)) {
      score = 78;
    }
    if (duration <= Duration(minutes: 16, seconds: 39) &&
        duration > Duration(minutes: 16, seconds: 30)) {
      score = 79;
    }
    if (duration <= Duration(minutes: 16, seconds: 30) &&
        duration > Duration(minutes: 16, seconds: 21)) {
      score = 80;
    }
    if (duration <= Duration(minutes: 16, seconds: 21) &&
        duration > Duration(minutes: 16, seconds: 12)) {
      score = 81;
    }
    if (duration <= Duration(minutes: 16, seconds: 12) &&
        duration > Duration(minutes: 16, seconds: 3)) {
      score = 82;
    }
    if (duration <= Duration(minutes: 16, seconds: 3) &&
        duration > Duration(minutes: 15, seconds: 54)) {
      score = 83;
    }
    if (duration <= Duration(minutes: 15, seconds: 54) &&
        duration > Duration(minutes: 15, seconds: 45)) {
      score = 84;
    }
    if (duration <= Duration(minutes: 15, seconds: 45) &&
        duration > Duration(minutes: 15, seconds: 36)) {
      score = 85;
    }
    if (duration <= Duration(minutes: 15, seconds: 36) &&
        duration > Duration(minutes: 15, seconds: 27)) {
      score = 86;
    }
    if (duration <= Duration(minutes: 15, seconds: 27) &&
        duration > Duration(minutes: 15, seconds: 18)) {
      score = 87;
    }
    if (duration <= Duration(minutes: 15, seconds: 18) &&
        duration > Duration(minutes: 15, seconds: 9)) {
      score = 88;
    }
    if (duration <= Duration(minutes: 15, seconds: 9) &&
        duration > Duration(minutes: 15, seconds: 0)) {
      score = 89;
    }
    if (duration <= Duration(minutes: 15, seconds: 0) &&
        duration > Duration(minutes: 14, seconds: 51)) {
      score = 90;
    }
    if (duration <= Duration(minutes: 14, seconds: 51) &&
        duration > Duration(minutes: 14, seconds: 42)) {
      score = 91;
    }
    if (duration <= Duration(minutes: 14, seconds: 42) &&
        duration > Duration(minutes: 14, seconds: 33)) {
      score = 92;
    }

    if (duration <= Duration(minutes: 14, seconds: 33) &&
        duration > Duration(minutes: 14, seconds: 24)) {
      score = 93;
    }
    if (duration <= Duration(minutes: 14, seconds: 24) &&
        duration > Duration(minutes: 14, seconds: 15)) {
      score = 94;
    }
    if (duration <= Duration(minutes: 14, seconds: 15) &&
        duration > Duration(minutes: 14, seconds: 6)) {
      score = 95;
    }
    if (duration <= Duration(minutes: 14, seconds: 6) &&
        duration > Duration(minutes: 13, seconds: 57)) {
      score = 96;
    }
    if (duration <= Duration(minutes: 13, seconds: 57) &&
        duration > Duration(minutes: 13, seconds: 48)) {
      score = 97;
    }
    if (duration <= Duration(minutes: 13, seconds: 48) &&
        duration > Duration(minutes: 13, seconds: 39)) {
      score = 98;
    }
    if (duration <= Duration(minutes: 13, seconds: 39) &&
        duration > Duration(minutes: 13, seconds: 30)) {
      score = 99;
    }
    if (duration <= Duration(minutes: 13, seconds: 30)) {
      score = 100;
    }

    return score;
  }
}
