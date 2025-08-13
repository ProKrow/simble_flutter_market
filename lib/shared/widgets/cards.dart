// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:simble_flutter_market/constants/app_decorations.dart';
import 'package:simble_flutter_market/constants/app_text_styles.dart';

// Product model class
class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;
  final bool isOnSale;
  final double? originalPrice;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.rating = 0.0,
    this.isOnSale = false,
    this.originalPrice,
  });
}

// Custom Product Card extending Card widget
class ProductCard extends Card {
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onAddToCart;

  const ProductCard({
    Key? key,
    required this.product,
    this.onTap,
    this.onAddToCart,
    EdgeInsetsGeometry? margin,
    double? elevation,
  }) : super(
         key: key,
         margin: margin ?? const EdgeInsets.all(8.0),
         elevation: elevation ?? 4.0,
       );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: ComponentBorders.cardBorder,
      child: Container(
        width: ComponentSizes.cardWidth,
        height: ComponentSizes.cardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppColors.productCardBgColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor.withAlpha(150),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: ComponentBorders.cardBorder,
              ),
              width: ComponentSizes.cardWidth,
              child: Image(
                image: NetworkImage(product.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Text(product.name, style: AppTextStyles.productName),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
          child: Container(
            height: 190,
            width: double.infinity,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[200],
                  child: const Icon(
                    Icons.image_not_supported,
                    color: Colors.grey,
                    size: 50,
                  ),
                );
              },
            ),
          ),
        ),
        // Sale badge
        if (product.isOnSale)
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'SALE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        // Rating badge
        if (product.rating > 0)
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: ComponentBorders.cardBorder,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 12),
                  const SizedBox(width: 2),
                  Text(
                    product.rating.toStringAsFixed(1),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildDetailsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Name
          Text(
            product.name,
            style: AppTextStyles.productTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          // Product Description
          Text(
            product.description,
            style: AppTextStyles.productDescription,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          // Price Section
          _buildPriceSection(),
        ],
      ),
    );
  }

  Widget _buildPriceSection() {
    return Row(
      children: [
        Text(
          '\$${product.price.toStringAsFixed(2)}',
          style: AppTextStyles.priceMain,
        ),
        if (product.isOnSale && product.originalPrice != null) ...[
          const SizedBox(width: 8),
          Text(
            '\$${product.originalPrice!.toStringAsFixed(2)}',
            style: AppTextStyles.priceSmall,
          ),
        ],
      ],
    );
  }

  Widget _buildActionSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: onAddToCart,
          icon: const Icon(Icons.add_shopping_cart, size: 18),
          label: const Text('Add to Cart', style: AppTextStyles.buttonPrimary),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.byButtonsColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
