import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/utils/app_constants.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/string_extension.dart';
import 'package:technaureus/utils/text_style.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard(
    this.customer, {
    super.key,
    this.onTap,
    this.onLongPress,
  });

  final Customer customer;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: kAppPaddingAll12,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 12,
              color: Color.fromRGBO(0, 0, 0, 0.16),
            )
          ],
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: customer.profilePic != null
                    ? CachedNetworkImage(
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                        imageUrl:
                            "${AppConstants.imageBaseUrl}${customer.profilePic}",
                        errorWidget: (context, url, error) => Image.asset(
                          "assets/images/profile_image.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    : Image.asset(
                        height: 80,
                        width: 80,
                        "assets/images/profile_image.png",
                        fit: BoxFit.cover,
                      ),
              ),
              kWidth8,
              buildVerticalDivider(),
              kWidth8,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          customer.name.toCapital(),
                          style: kTextStyle14Bold,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              radius: 9,
                              child: const Icon(
                                Icons.call,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                            kWidth2,
                            Image.asset(
                              "assets/images/whatsapp.png",
                              width: 24,
                              height: 24,
                              color: Colors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "ID: ${customer.id}",
                      style: kTextStyle13BoldGrey.copyWith(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    kHeight4,
                    Text(
                      "${customer.city}, ${customer.state}, ${customer.country}",
                      style: kTextStyle13BoldGrey.copyWith(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    kHeight4,
                    Text(
                      customer.mobileNumber,
                      style: kTextStyle14Bold.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
