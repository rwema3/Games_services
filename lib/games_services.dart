import 'dart:async';

import 'package:games_services_platform_interface/game_services_platform_interface.dart';
import 'package:games_services_platform_interface/models/access_point_location.dart';
import 'package:games_services_platform_interface/models/achievement.dart';
import 'package:games_services_platform_interface/models/score.dart';
export 'package:games_services_platform_interface/models/achievement.dart';
export 'package:games_services_platform_interface/models/score.dart';
export 'package:games_services_platform_interface/models/access_point_location.dart';

class GamesServices {
  /// Unlock an [achievement].
  /// [Achievement] takes three parameters:
  /// [androidID] the achievement id for android.
  /// [iOSID] the achievement id for iOS.
  /// [percentComplete] the completion percent of the achievement, this parameter is
  /// optional in case of iOS.
  static Future<String?> unlock({achievement: Achievement}) async {
    return await GamesServicesPlatform.instance
        .unlock(achievement: achievement);
  }

  /// Increment an [achievement].
  /// [Achievement] takes two parameters:
  /// [androidID] the achievement id for android.
  /// [steps] If the achievement is of the incremental type
  /// you can use this method to increment the steps.
  /// * only for Android (see https://developers.google.com/games/services/android/achievements#unlocking_achievements).
  static Future<String?> increment({achievement: Achievement}) async {
    return await GamesServicesPlatform.instance
        .increment(achievement: achievement);
  }

  /// Submit a [score] to specific leader board.
  /// [Score] takes three parameters:
