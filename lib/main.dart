// import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:syncplay/screens/registerScreen.dart';
// import 'package:spotify_sdk/models/crossfade_state.dart';
// import 'package:spotify_sdk/spotify_sdk.dart';
// // import 'package:spotify_sdk/models/player_state.dart';
// import 'package:spotify_sdk/models/player_context.dart';
// import 'package:spotify_sdk/models/connection_status.dart';
// import 'package:spotify_sdk/models/image_uri.dart';
import 'package:syncplay/screens/welcome.dart';
import 'package:syncplay/screens/testScreen.dart';
import 'package:syncplay/screens/loginScreen.dart';
import 'package:syncplay/screens/registerScreen.dart';
import 'package:syncplay/screens/dashboardScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color(0XFF0BCAC7),
        primaryColor: Color(0XFF1C2035),
        brightness: Brightness.dark,
        fontFamily: 'Avenir'
      ),
      home: DashboardScreen(),
      // initialRoute: FirebaseAuth.instance.currentUser() != null ? DashboardScreen.id : WelcomePage.id,
      // initialRoute: firebaseAWelcomePage.id,
      routes: {
        WelcomePage.id : (context) => WelcomePage(),
        LoginScreen.id : (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        DashboardScreen.id: (context) => DashboardScreen()
      },
    );
  }
}

// sample code for future refrence
// class Home extends StatefulWidget {
//   @override
//   HomeState createState() => HomeState();
// }

// class HomeState extends State<Home> {
//   bool _loading;
//   var result;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SpotifySdk Example"),
//       ),
//       body: _sampleFlowWidget(context),
//     );
//   }

//   Widget _sampleFlowWidget(BuildContext context2) {
//     return StreamBuilder<ConnectionStatus>(
//       stream: SpotifySdk.subscribeConnectionStatus(),
//       builder: (context, snapshot) {
//         bool _connected = false;
//         if (snapshot.data != null) {
//           _connected = snapshot.data.connected;
//         }

//         return Stack(
//           children: [
//             ListView(
//               padding: EdgeInsets.all(8),
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     FlatButton(
//                       child: Icon(Icons.settings_remote),
//                       onPressed: () => connectToSpotifyRemote(),
//                     ),
//                     FlatButton(
//                       child: Text("toggle repeat"),
//                       // onPressed: () => getAuthenticationToken(),
//                       onPressed: () => toggleRepeat(),
//                     ),
//                   ],
//                 ),
//                 Divider(),
//               ],
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Future<void> connectToSpotifyRemote() async {
//     try {
//       setState(() {
//         _loading = true;
//       });
//       var result = await SpotifySdk.connectToSpotifyRemote(
//         // print(DotEnv().)
//           clientId: DotEnv().env['CLIENT_ID'],
//           redirectUrl: DotEnv().env['REDIRECT_URL']
//       );
//       print(result);
//       // setStatus(result
//       //     ? "connect to spotify successful"
//       //     : "conntect to spotify failed");
//       setState(() {
//         _loading = false;
//       });
//     } on PlatformException catch (e) {
//       setState(() {
//         _loading = false;
//       });
//       // setStatus(e.code, message: e.message);
//     } on MissingPluginException {
//       setState(() {
//         _loading = false;
//       });
//       // setStatus("not implemented");
//     }
//   }

//   Future<void> toggleRepeat() async {
//     try {
//       await SpotifySdk.toggleRepeat();
//     } on PlatformException catch (e) {
//       // setStatus(e.code, message: e.message);
//     } on MissingPluginException {
//       // setStatus("not implemented");
//     }
//   }
// }