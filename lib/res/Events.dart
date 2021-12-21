import 'package:acft_flutter/models/Event.dart';

class Events {
  //MAIN EVENTS
  static const Event deadlift = Event(
      'MDL',
      'The MDL event represents movements required to safely and effectively lift heavy loads from the ground, jump, bound and tolerate landing. It requires well-conditioned back and leg muscles and helps Soldiers to avoid upper and lower back injuries caused by moving long distances under heavy load.',
      '0fLRZnSBQSc',
      '60 and 100 point scores: 140 pounds and 340 pounds',
      'Muscular strength, balance and flexibility',
      '60-pound hex bar and plates',
      'assets/deadlift_acft.svg',
      80,
      340,
      'lbs',
      0);

  static const Event powerThrow = Event(
    'SPT',
    'The SPT event represents tasks requiring quick explosive movements to maneuver equipment and personnel.',
    'bqlgEg78qnM',
    '60 and 100 point scores: 4.5 and 12.5 meters',
    'Explosive power, balance, and flexibility',
    '10-pound medicine ball',
    'assets/powerthrow_acft.svg',
    3.3,
    12.5,
    'm',
    1,
  );

  static const Event pushup = Event(
    'HRP',
    'The HRP is an upper body endurance test that represents repetitive and sustained pushing used in combat tasks.',
    'j7WEyYQRPC8',
    '60 and 100 point scores: 10 and 60 repetitions',
    'Muscular endurance',
    'Level surface',
    'assets/pushup_acft.svg',
    0,
    60,
    'reps',
    0,
  );

  static const Event dragCarry = Event(
    'SDC',
    'The SDC is a test of strength, endurance, and anaerobic capacity, which are needed to accomplish high intensity combat tasks that last from a few seconds to several minutes.',
    'V-NIDQIk39M',
    '60 and 100 point scores: 3:00 and 1:33 minutes',
    'Agility, anaerobic endurance, muscular endurance and muscular strength',
    '2x40-pound kettlebells and 90-pound sled',
    'assets/dragcarry_acft.svg',
    205,
    93,
    '', //values in seconds
    0,
  );
  static const Event legTuckOrPlank = Event(
    'LTK or PLK',
    'The LTK assesses the strength of the Soldiers grip, arm, shoulder and trunk muscles. These muscles assist Soldiers in load carriage and in avoiding injuries to the back.The PLK is an alternate assessment that may be used. The plank helps build core strength that promotes back health and helps reduce injuries.',
    'bXSHlJVjpIM',
    '60 and 100 point scores: 140 pounds and 340 pounds',
    'Muscular strength and endurance',
    'LEG TUCK: Climbing bar PLANK: Level surface',
    'assets/legtuck_plank_acft.svg',
    0,
    20,
    'reps',
    0,
  );
  static const Event run = Event(
      '2MR',
      'The run event measures aerobic endurance, which is required for conducting continuous operations and ground movements on foot. Higher aerobic endurance allows the body to recover quickly in preparation for executing other physically demanding tasks that may arise during a ground movement, such as reacting quickly to enemy contact.',
      'DMuaZKnkvG4',
      '60 and 100 point scores: 21:00 and 13:30 minutes',
      'Aerobic endurance',
      'Two mile run route on level field, track or running surface',
      'assets/run_acft.svg',
      1368,
      810,
      '', // time in seconds
      0);

  //ALTERNATE EVENTS
  static const Event row = Event(
    '5,000 Meter Row',
    'Alternate non-impact aerobic test events include a 5,000 meter row, a 12,000 meter stationary bike, a 1,000 meter swim. During this ACFT 3.0 data collection period, Soldiers with permanent profiles will take all ACFT events within the limits of their profile, to include either the 2 mile run or one of the alternate non-impact aerobic test events.',
    'ojEtzsWSutw',
    'Point scales are currently being developed. The current 60 point PASS/FAIL time equals 25 minutes.',
    'Aerobic Endurance',
    'Stationary Rower',
    'assets/rowing_machine.svg',
    null,
    null,
    '',
    0,
  );
  static const Event bike = Event(
    '12,000 Meter Staionary Bike',
    'Alternate non-impact aerobic test events include a 5,000 meter row, a 12,000 meter stationary bike, a 1,000 meter swim. During this ACFT 3.0 data collection period, Soldiers with permanent profiles will take all ACFT events within the limits of their profile, to include either the 2 mile run or one of the alternate non-impact aerobic test events.',
    '_-yylQcn6Ns',
    'Point scales are currently being developed. The current 60 point PASS/FAIL time equals 25 minutes.',
    'Aerobic Endurance',
    'Stationary Bike',
    'assets/stationary-bike.svg',
    null,
    null,
    '',
    0,
  );
  static const Event swim = Event(
    '1,000 Meter Swim',
    'Alternate non-impact aerobic test events include a 5,000 meter row, a 12,000 meter stationary bike, a 1,000 meter swim. During this ACFT 3.0 data collection period, Soldiers with permanent profiles will take all ACFT events within the limits of their profile, to include either the 2 mile run or one of the alternate non-impact aerobic test events.',
    'C22lSycp21g',
    'Point scales are currently being developed. The current 60 point PASS/FAIL time equals 25 minutes.',
    'Aerobic Endurance',
    '25m or 50m pool',
    'assets/swimming.svg',
    null,
    null,
    '',
    0,
  );
}
