import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/data/models/food_model.dart';
import 'package:msp_restaurant_app/ui/core/theme/theme_manager.dart';
import 'package:msp_restaurant_app/ui/orders_modal/order_modal_cubit.dart';

class DefaultDetailsScreen extends StatelessWidget {
  const DefaultDetailsScreen({super.key, required this.foodModel});

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: OrderModalCubit.get(context),
      builder: (context, state) {
        var cubit = OrderModalCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 12,
              children: [
                Image.network(foodModel.image, width: 300, height: 305),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    foodModel.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 35,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    Text(
                      foodModel.rate.toString(),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Text(
                    foodModel.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 14),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 90,
                        child: FilledButton(
                          onPressed: () {},
                          style: selectedButtonStyle(),
                          child: Text(
                            '\$${foodModel.price}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                    height: 50,
                    width: 200,
                    child: FilledButton(
                      onPressed: () {
                        if(cubit.addToCart(foodModel)){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This Product is added to cart successfully") , duration: Duration(seconds: 2),backgroundColor: Theme.of(context).hoverColor,));
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This Product already added to the cart") , duration: Duration(seconds: 2), backgroundColor: Theme.of(context).primaryColorDark,));
                        }
                      },
                      style: addToCartButtonStyle(),
                      child: Text(
                        'Add to cart',
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodySmall,
                      ),
                    ),
                  ),
                    ]
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
