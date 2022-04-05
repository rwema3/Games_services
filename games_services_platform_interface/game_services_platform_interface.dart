import 'dart:async';

import 'package:games_services_platform_interface/method_channel_games_services.dart';
import 'package:games_services_platform_interface/models/achievement.dart';
import 'package:games_services_platform_interface/models/score.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'models/access_point_location.dart';

abstract class GamesServicesPlatform extends PlatformInterface {
  /// Constructs a GamesServicesPlatform.
  GamesServicesPlatform() : super(token: _token);

  static final Object _token = Object();

  static GamesServicesPlatform _instance = MethodChannelGamesServices();

  /// The default instance of [GamesServicesPlatform] to use.
  ///
  /// Defaults to [MethodChannelGamesServices].
  static GamesServicesPlatform get instance => _instance;

