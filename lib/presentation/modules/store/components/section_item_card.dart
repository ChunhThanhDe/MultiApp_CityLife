import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';

class ProductItemCard extends StatelessWidget {

  const ProductItemCard({
    required this.item, required this.onImageTap, required this.onAddTap, super.key,
  });
  final ProductItem item;
  final VoidCallback onImageTap;
  final VoidCallback onAddTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: Row(
        children: [
          // Nội dung bên trái
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: const Color(0xFF161A1D)),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Text(
                      '\$${item.price}',
                      style: TextStyle(fontSize: 12.sp, color: const Color(0xFF4A5763)),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '•',
                      style: TextStyle(fontSize: 12.sp, color: const Color(0xFF5856D7)),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '',
                      style: TextStyle(fontSize: 12.sp, color: const Color(0xFF4A5763)),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                  '${item.rating} ★ (${item.reviewCount}+)',
                  style: TextStyle(fontSize: 12.sp, color: const Color(0xFF4A5763)),
                ),
              ],
            ),
          ),
          // Ảnh + nút cộng
          GestureDetector(
            onTap: onImageTap,
            child: Container(
              width: 120.w,
              height: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: NetworkImage(item.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: onAddTap,
                  child: Container(
                    width: 36.w,
                    height: 36.w,
                    margin: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFE8EBEE)),
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
                      ],
                    ),
                    child: Icon(Icons.add, size: 24.w, color: const Color(0xFF21262C)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
