import 'package:flutter/material.dart';
import 'package:games_services/games_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
          body: Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  child: Text('signIn'),
                  onPressed: () async {
                    final result = await GamesServices.signIn();
                    print(result);
                  },
                ),
              
                ElevatedButton(
                  child: Text('Show Leaderboards'),
                  onPressed: () async {
                    final result = await GamesServices.showLeaderboards(
                        iOSLeaderboardID: 'ios_leaderboard_id');
                    print(result);
                  },
                ),
                ElevatedButton(
                  child: Text('Submit Score'),
                  onPressed: () async {
                    final result = await GamesServices.submitScore(
                        score: Score(
                            androidLeaderboardID: 'android_leaderboard_id',
                            iOSLeaderboardID: 'ios_leaderboard_id',
                            value: 5));
                    print(result);
                  },
                ),
                ElevatedButton(
                  child: Text('Unlock'),
                  onPressed: () async {
                    final result = await GamesServices.unlock(
                        achievement: Achievement(
                            androidID: 'android_id',
                            iOSID: 'ios_id',
                            percentComplete: 100));
                    print(result);
                  },
                ),
                ElevatedButton(
                  child: Text('Increment'),
                  onPressed: () async {
                    final result = await GamesServices.increment(
                        achievement:
                            Achievement(androidID: 'android_id', steps: 50));
                    print(result);
                  },
                ),
              ],
            ),
          )),
    );
  }
}
