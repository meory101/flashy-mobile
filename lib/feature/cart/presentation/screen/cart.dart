import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flashy/core/resource/color_manager.dart';
import 'package:flashy/core/resource/font_manager.dart';
import 'package:flashy/core/resource/size_manager.dart';
import '../../../../core/widget/text/app_text_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Scarlett Whitening',
      'description': 'Brightly Serum',
      'price': 10.3,
      'quantity': 1,
      'image': 'assets/images/placeholder.png',
    },
    {
      'name': 'Ponds White Series',
      'description': '4 Products',
      'price': 21.93,
      'quantity': 1,
      'image': 'assets/images/placeholder.png',
    },
    {
      'name': 'Emina Bright Stuff',
      'description': 'Face Serum',
      'price': 11.56,
      'quantity': 2,
      'image': 'assets/images/placeholder.png',
    },
    {
      'name': 'The Ordinary Niacinamide',
      'description': '10% + Zinc',
      'price': 6.5,
      'quantity': 1,
      'image': 'assets/images/placeholder.png',
    },
    {
      'name': 'Neutrogena Hydro Boost',
      'description': 'Water Gel Moisturizer',
      'price': 15.0,
      'quantity': 1,
      'image': 'assets/images/placeholder.png',
    },
    {
      'name': 'CeraVe Hydrating Cleanser',
      'description': 'For Normal to Dry Skin',
      'price': 12.99,
      'quantity': 1,
      'image': 'assets/images/placeholder.png',
    },
  ];

  void _incrementQuantity(int index) {
    setState(() {
      products[index]['quantity']++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (products[index]['quantity'] > 1) {
        products[index]['quantity']--;
      }
    });
  }

  void _removeProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

  void _showClearCartDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to remove all items?'),
          actions: [
            TextButton(
              onPressed: () {
                _clearCart();
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

  void _clearCart() {
    setState(() {
      products.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalAmount = products.fold(0, (sum, item) {
      final price = item['price'] ?? 0.0;
      final quantity = item['quantity'] ?? 1;
      return sum + (price * quantity);
    });

    return Scaffold(
      backgroundColor: AppColorManager.background,
      appBar: AppBar(
        title: Center(
          child: AppTextWidget(
            text: 'Cart',
            color: AppColorManager.textAppColor,
            fontSize: FontSizeManager.fs20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppWidthManager.w3Point8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: IconButton(
                onPressed: _showClearCartDialog,
                icon: Icon(Icons.delete, color: AppColorManager.red),
                tooltip: 'Remove All Items',
              ),
            ),
            SizedBox(height: AppHeightManager.h02),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: AppHeightManager.h1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadiusManager.r15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppWidthManager.w3Point8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppRadiusManager.r10),
                          child: Image.asset(
                            product['image'] ?? 'assets/images/placeholder.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: AppWidthManager.w4),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppTextWidget(
                                text: product['name'] ?? 'Unknown Product',
                                fontWeight: FontWeight.bold,
                                fontSize: FontSizeManager.fs17,
                              ),
                              AppTextWidget(
                                text:
                                    product['description'] ?? 'No Description',
                                fontSize: FontSizeManager.fs15,
                                color: AppColorManager.grey,
                              ),
                              AppTextWidget(
                                text:
                                    '\$ ${(product['price'] ?? 0.0).toStringAsFixed(2)}',
                                fontSize: FontSizeManager.fs15,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () => _removeProduct(index),
                              icon: Icon(Icons.delete,
                                  color: AppColorManager.red),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => _incrementQuantity(index),
                                  icon: Icon(Icons.add,
                                      color: AppColorManager.grey),
                                ),
                                AppTextWidget(
                                  text: '${product['quantity'] ?? 1}',
                                  fontSize: FontSizeManager.fs15,
                                ),
                                IconButton(
                                  onPressed: () => _decrementQuantity(index),
                                  icon: Icon(Icons.remove,
                                      color: AppColorManager.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: AppHeightManager.h10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextWidget(
                      text: 'Total Amount:',
                      fontSize: FontSizeManager.fs17,
                      fontWeight: FontWeight.bold,
                    ),
                    AppTextWidget(
                      text: '\$ $totalAmount',
                      fontSize: FontSizeManager.fs16,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColorManager.black,
                    padding: EdgeInsets.symmetric(
                        horizontal: AppWidthManager.w5,
                        vertical: AppHeightManager.h1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadiusManager.r10),
                    ),
                  ),
                  child: AppTextWidget(
                    text: 'Check Out',
                    color: AppColorManager.white,
                    fontSize: FontSizeManager.fs17,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppHeightManager.h4),
          ],
        ),
      ),
    );
  }
}
