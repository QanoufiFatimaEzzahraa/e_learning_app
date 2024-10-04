import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_learning_app/pages/sign_in/sign_in.dart';
import 'package:my_learning_app/pages/signup/signup.dart';
import 'package:my_learning_app/pages/homePage/homePage.dart';
import 'package:my_learning_app/pages/course/courseDetails.dart';
import 'package:my_learning_app/pages/course/course1.dart';
import 'package:my_learning_app/pages/course/historyDetails.dart';
import 'package:my_learning_app/pages/course/history.dart';
import 'package:my_learning_app/pages/course/coursesPage.dart';
import 'package:my_learning_app/pages/course/UI_course/chapitre1.dart';
import 'package:my_learning_app/pages/profile/profilePage.dart';
import 'package:my_learning_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:my_learning_app/pages/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: true,
            create: (context) => WelcomeBloc(),
          )
        ],
        child: ScreenUtilInit(
            builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                      elevation: 0,
                      backgroundColor: Colors.white
                  )
              ),
              home: const Welcome(),
              routes: {
                //"myHomePage": (context) => MyHomePage(),
                "signIn": (context) => SignIn(),
                "signUp": (context) => SignUp(),
                "homePage": (context) => HomePage(),
                "courseDetails": (context) => CourseDetails(),
                "course1": (context) => Course1(),
                "profilePage": (context) => ProfilePage(),
                "HistoryDetails": (context) => HistoryDetails(),
                "history": (context) => History(),
                "coursesPage": (context) => CoursesPage(),
                "chapitre1": (context) => chapitre1()

              },
            )
        )
    );
  }
}
