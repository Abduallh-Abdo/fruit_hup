import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/features/checkout/presentation/cubit/add_orders_cubit/add_orders_cubit.dart';

import '../../../../core/helper/functions/build_error_bar.dart';

class AddOrderCubitBolcConsumer extends StatelessWidget {
  const AddOrderCubitBolcConsumer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrdersCubit, AddOrdersState>(
      listener: (context, state) {
        if (state is AddOrdersSuccess) {
          showBar(context, 'تم اضافة الطلب بنجاح');
        }
        if (state is AddOrdersFailure) {
          showBar(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return child;
      },
    );
  }
}
