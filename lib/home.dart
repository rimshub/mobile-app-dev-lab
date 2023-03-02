import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// Import for task 8: change layout
import 'supplemental/asymmetric_view.dart';

import 'model/product.dart';
import 'model/products_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Return an AsymmetricView (104)
    // Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // Add app bar (102)
      appBar: AppBar(
        // Add buttons and title (102)
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            // print('Menu button');
          },
        ),
        title: const Text('SHRINE'),
        // Add trailing buttons (102)
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              // print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              // print('Filter button');
            },
          ),
        ],
      ),
      // Add a grid view (102)
      body: AsymmetricView(
        products: ProductsRepository.loadProducts(Category.all),
      ),
      // Set resizeToAvoidBottomInset (101)
      resizeToAvoidBottomInset: false,
    );
  }
}
