import 'package:bycarr/screens/forgetpassword_screen.dart';
import 'package:bycarr/screens/register_partnerscreen.dart';
import 'package:bycarr/screens/register_screen.dart';
import 'package:bycarr/screens/signin_screen.dart';
import 'package:bycarr/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';

class AppRoutes {
  static final goRouter = GoRouter(
    initialLocation: SplashScreen.routeName,
    routes: [
      GoRoute(
        path: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: SignInPage.routeName,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
      ),
       GoRoute(
        path: ForgetpasswordScreen.routeName,
        builder: (context, state) => const ForgetpasswordScreen(),
      ),
      GoRoute(
        path: RegisterScreen.routeName,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: RegisterPartnerscreen.routeName,
        builder: (context, state) => const RegisterPartnerscreen(),
      ),
    ],
  );
}
