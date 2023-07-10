import 'package:go_router/go_router.dart';
import 'package:my_quran/features/home/presentation/views/surah_details_view.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kSurahDetailsView = '/surahDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSurahDetailsView,
        builder: (context, state) => const SurahDetailsView(),
      ),
    ],
  );
}
