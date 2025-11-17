
import 'package:bycarr/screens/export_screens.dart';
import 'package:go_router/go_router.dart';
import '../widgets/footer/export_footerwidgets.dart';

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
      GoRoute(
        path: ShippingDeliveryPage.routeName,
        builder: (context, state) => const ShippingDeliveryPage(),
      ),
      GoRoute(
        path: AboutUsPage.routeName,
        builder: (context, state) => const AboutUsPage(),
      ),
       GoRoute(
        path: ContactEmailPage.routeName,
        builder: (context, state) => const ContactEmailPage(),
      ),
       GoRoute(
        path: DisclaimerPage.routeName,
        builder: (context, state) => const DisclaimerPage(),
      ),
       GoRoute(
        path: HelpSupportPage.routeName,
        builder: (context, state) => const HelpSupportPage(),
      ),
       GoRoute(
        path: PrivacyPolicyPage.routeName,
        builder: (context, state) => const PrivacyPolicyPage(),
      ),
       GoRoute(
        path: TermsConditionsPage.routeName,
        builder: (context, state) => const TermsConditionsPage(),
      ),
       GoRoute(
        path: ReturnCancellationPage.routeName,
        builder: (context, state) => const ReturnCancellationPage(),
      ),
       GoRoute(
        path: CustomerCarePage.routeName,
        builder: (context, state) => const CustomerCarePage(),
      ),
      GoRoute(
        path: RetailerInquiryForm.routeName,
        builder: (context, state) => const RetailerInquiryForm(),
      ),
      GoRoute(
        path: PrivacyReusableWidget.routeName,
        builder: (context, state) => const PrivacyReusableWidget(),
      ),
    ],
  );
}
