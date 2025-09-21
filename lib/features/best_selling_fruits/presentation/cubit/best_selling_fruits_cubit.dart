import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'best_selling_fruits_state.dart';

class BestSellingFruitsCubit extends Cubit<BestSellingFruitsState> {
  BestSellingFruitsCubit() : super(BestSellingFruitsInitial());
}
