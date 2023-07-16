import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_quran/core/utils/app_router.dart';
import 'package:my_quran/core/utils/bloc_observer.dart';
import 'package:my_quran/core/utils/colors.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:my_quran/core/utils/service_locator.dart';
import 'package:my_quran/features/home/data/repos/home_repo_impl.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';
import 'package:my_quran/features/home/domain/use_cases/fetch_all_surah_data_use_case.dart';
import 'package:my_quran/features/home/presentation/manager/fetch_surahs_cubit/fetch_surahs_data_cubit.dart';
import 'package:sizer/sizer.dart';

import 'features/home/data/models/ayah_model/ayah/ayah.dart';
import 'features/home/domain/entities/ayah_entity/ayah_entity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(AyahEntityAdapter());

  Hive.registerAdapter(SurahEntityAdapter());
  Hive.registerAdapter(AyahAdapter());
  await Hive.openBox<SurahEntity>(kSurahBox);
  await Hive.openBox<AyahEntity>(kAyahBox);

  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchSurahsDataCubit(
            FetchAllSurahDataUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..fetchSurahData(),
        ),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            title: 'My Quran',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.kWhiteColor,
            ),
          );
        },
      ),
    );
  }
}
