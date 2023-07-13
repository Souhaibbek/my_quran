import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_quran/core/utils/service_locator.dart';
import 'package:my_quran/features/home/data/repos/home_repo_impl.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/use_cases/fetch_ayah_all_data_use_case.dart';
import 'package:my_quran/features/home/presentation/views/surah_details_view.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../features/home/presentation/manager/fetch_ayahs_cubit/fetch_ayahs_data_cubit.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => FetchAyahsDataCubit(
            FetchAyahAllDataUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
          child: SurahDetailsView(numberOfSurah: state.extra as int),
        ),
      ),
    ],
  );
}
