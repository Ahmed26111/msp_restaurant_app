import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/ui/core/theme/theme_manager.dart';
import 'package:msp_restaurant_app/ui/orders_modal/order_modal_cubit.dart';
import 'package:msp_restaurant_app/ui/payment_screen/payment_widget/payment_screen.dart';
import 'package:msp_restaurant_app/util/components/default_order_list_tile/default_order_list_tile_widget/default_order_list_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, state) {},
      bloc: OrderModalCubit.get(context),
      builder: (context, state) {
        var cubit = OrderModalCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "My Cart",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          body: (cubit.getAllOrders().isNotEmpty)
              ? Column(
                  spacing: 17,
                  children: [
                    Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemCount: cubit.getAllOrders().length,
                        itemBuilder: (context, index) => DefaultOrderListTile(
                          foodModel: cubit.getAllOrders()[index],
                        ),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 15),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => PaymentScreen()
                              )
                          );
                        },
                        style: checkoutButtonStyle(),
                        child: Text("Checkout"),
                      ),
                    ),
                    SizedBox(height: 15,),
                  ],
                )
              : Center(child: Text("No Order Yet")),
        );
      },
    );
  }
}
