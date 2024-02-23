import 'package:devs_norte_quiz/config/colors/colors_app.dart';
import 'package:devs_norte_quiz/controller/google_auth_controller.dart';
import 'package:devs_norte_quiz/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  ColorsApp colorsApp = ColorsApp();

  bool loadUser = false;
  bool userAuth = false;

  Future<void>getUser()async{
    setState(() => loadUser = true);
    await Future.delayed(const Duration(seconds: 3));

    if(userAuth){
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
              (route) => false);
    }

    setState(() => loadUser = false);
  }


  @override
  void initState() {
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(colorsApp.colorBeginSplash),
            Color(colorsApp.colorEndSplash)
          ]
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/logo.png"),
          const SizedBox(height: 40,),
          loadUser == true
          ? const CircularProgressIndicator(color: Colors.white,)
          : ElevatedButton.icon(
              onPressed: ()async{
                await GoogleAuthController().signInWithGoogle();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                        (route) => false);
              },
              label: const Text("Entrar com Google"),
            icon: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
