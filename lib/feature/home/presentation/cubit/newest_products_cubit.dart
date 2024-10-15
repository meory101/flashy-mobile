import 'package:flashy/feature/home/presentation/cubit/newest_products_state.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/api/api_error/api_error.dart';
import '../../../../core/resource/cubit_status_manager.dart';
import '../../domain/usecase/newest_products_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NewestProductsCubit extends Cubit<NewestProductsState> {
  final NewestProductsUsecase usecase;

  NewestProductsCubit({
    required this.usecase,
  }) : super(NewestProductsState.initail());

  //Send Code
  getNewestProducts({required BuildContext context,}) async {
    emit(state.copyWith(status: CubitStatus.loading));
    final result = await usecase();
    //!Check if Bloc Closed
    if (isClosed) return;
    result.fold(
      (failure) async {
        final ErrorEntity errorEntity = await ApiErrorHandler.mapFailure(
            failure: failure, buildContext: context);
        emit(state.copyWith(
            error: errorEntity.errorMessage, status: CubitStatus.error));
      },
      (data) {
        emit(state.copyWith(status: CubitStatus.success));
      },
    );
  }
}
