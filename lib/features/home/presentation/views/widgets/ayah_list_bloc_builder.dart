import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/fetch_ayahs_cubit/fetch_ayahs_data_cubit.dart';
import 'ayah_loading_widget.dart';
import 'custom_ayah_list_view.dart';

class AyahListBlocBuilder extends StatelessWidget {
  const AyahListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchAyahsDataCubit, FetchAyahsDataState>(
      builder: (context, state) {
        if (state is FetchAyahsDataSuccess) {
          return CustomAyahListView(
            ayahs: state.ayahs,
          );
        } else if (state is FetchAyahsDataFailure) {
          return Text(state.errMsg);
        } else {
          return const AyahLoadingWidget();
        }
      },
    );
  }
}
