import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/ui/orders_modal/order_modal_cubit.dart';

class DefaultOrderListTile extends StatelessWidget {
  const DefaultOrderListTile({super.key, required this.foodModel});

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: OrderModalCubit.get(context),
      builder: (context, state) {
        var cubit = OrderModalCubit.get(context);
        return Card(
          color: Theme.of(context).canvasColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(foodModel.image, width: 120, height: 120 ,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 25,
                  children: [
                    Text(
                      foodModel.name,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        SizedBox(width: 35,),
                        Text(
                          "\$${foodModel.price}",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        IconButton(
                          onPressed: () {
                            cubit.removeOrderFromCart(foodModel);
                          },
                          icon: Icon(Icons.remove_circle_outline_outlined),
                          color: Theme.of(context).primaryColorDark,
                          iconSize: 35,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
