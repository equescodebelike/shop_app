import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/model/catalog/get/product/product_count.dart';
import 'package:shop_app/model/payment/payment_model.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/order_page/bloc/order_bloc.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';
import 'package:shop_app/util/dio_util.dart';

@RoutePage()
class OrderPage extends StatefulWidget {
  const OrderPage({super.key, required this.products});

  final List<ProductWithCount> products;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late final TextEditingController nameTextController;
  late final TextEditingController phoneTextController;
  late final TextEditingController emailTextController;
  late final TextEditingController commentTextController;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    nameTextController = TextEditingController();
    phoneTextController = TextEditingController();
    emailTextController = TextEditingController();
    commentTextController = TextEditingController();

    //TODO
    nameTextController.text = 'Arkhip';
    phoneTextController.text = '9056500686';
    emailTextController.text = 'nep3600@gmail.com';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      child: BlocProvider(
        create: (context) => OrderBloc(
          catalogService: DioUtil().catalogService,
          deliveryService: DioUtil().deliveryService,
          paymentService: DioUtil().paymentService,
          orderService: DioUtil().orderService,
          products: widget.products,
        )..add(const LoadDeliveriesOrderEvent()),
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: theme.colorScheme.primary,
              ),
              title: const Text('Оформление заказа'),
              centerTitle: true,
            ),
            body: BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
              if (state is InitOrderState) {} //TODO
              if (state is DeliveriesOrderState) {} //TODO
              if (state is PaymentsOrderState) {
                CustomFilledButton(
                  onTap: () {
                    context.read<OrderBloc>().add(
                          OrderCreateOrderEvent(
                            products: widget.products,
                            userName: nameTextController.text,
                            userPhone: phoneTextController.text,
                            userEmail: emailTextController.text,
                            comment: commentTextController.text,
                          ),
                        );
                  },
                  text: 'Оформить заказ',
                );
              } //TODO
              if (state is CreatedOrderState) {
                return Center(
                  child: Column(
                    children: [
                      const Text('Заказ успешно сформирован'),
                      CustomFilledButton(
                        onTap: () async {
                          context.router.popUntilRoot();
                          await context.router.navigate(
                            CatalogTab(children: [
                              CatalogRouteWidget(),
                            ]),
                          );
                        },
                        text: 'Перейти к покупкам',
                      ),
                    ],
                  ),
                );
              }
              if (state is ErrorOrderState) {
                return Center(
                  child: Column(
                    children: [
                      const Text(
                          'Произошла ошиибка! Оформите заказ заново, проверьте правильность введенных данных'),
                      CustomFilledButton(
                        onTap: () {
                          context.router.pop();
                        },
                        text: 'Вернуться в корзину',
                      ),
                    ],
                  ),
                );
              }
              return const CircularProgressIndicator();
            })),
      ),
    );
  }

  @override
  void dispose() {
    nameTextController.dispose();
    phoneTextController.dispose();
    emailTextController.dispose();
    commentTextController.dispose();
    super.dispose();
  }
}

class _Payment extends StatelessWidget {
  const _Payment({
    required this.payment,
    required this.theme,
    required this.selected,
    this.onTap,
  });

  final Payment payment;
  final ThemeData theme;
  final Payment? selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: ListTile(
          onTap: onTap,
          leading: AspectRatio(
            aspectRatio: 1.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: payment.icon ?? '',
                progressIndicatorBuilder: (_, __, ___) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorWidget: (_, __, ___) {
                  return Image.asset(
                    'assets/images/empty_photo.png',
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ),
          title: Text(
            payment.title,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          subtitle: Text(
            payment.description ?? 'Описание',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
          trailing: payment == selected ? const Icon(Icons.check) : null,
        ),
      ),
    );
  }
}
