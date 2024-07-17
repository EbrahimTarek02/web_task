import 'package:flutter/material.dart';
import 'package:web_task/ui/screens/home/widgets/footer_icon.dart';
import 'package:web_task/ui/screens/home/widgets/navigation_bar_button.dart';
import 'package:web_task/ui/screens/home/widgets/reach_us_item.dart';
import 'package:web_task/ui/utils/app_assets.dart';
import 'package:web_task/ui/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Stack(
              alignment: Alignment.topCenter,

              children: [
                Image.asset(
                  AppAssets.coverImage,
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.6,
                  fit: BoxFit.fill,
                ),

                Column(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Image.asset(
                            AppAssets.logoImage,
                          ),
                          const Row(
                            children: [
                              NavigationBarButton(
                                title: "Home",
                                isSelected: true,
                              ),
                              NavigationBarButton(
                                title: "About Us",
                                isSelected: false,
                              ),
                              NavigationBarButton(
                                title: "Products",
                                isSelected: false,
                              ),
                              NavigationBarButton(
                                title: "Packing",
                                isSelected: false,
                              ),
                              NavigationBarButton(
                                title: "Quality Control",
                                isSelected: false,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: (){},
                                child: const Row(
                                  children: [
                                    Text(
                                      "EN",
                                      style: TextStyle(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: AppColors.white,
                                    )
                                  ],
                                )
                              ),
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0)
                                  )
                                ),
                                child: const Text(
                                  "Contact Us",
                                  style: TextStyle(
                                    color: AppColors.white
                                  ),
                                )
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.1,),
                    RichText(
                      textAlign: TextAlign.center,

                      text: const TextSpan(
                        text: 'Discover The',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Foundation ',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          TextSpan(
                              text: 'Of Excellence In Mining',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                    Text(
                      "Explore our offerings of silica sand, salt, gypsum, and more",
                      style: TextStyle(
                        color: AppColors.white.withOpacity(0.7),
                        fontSize: 18,
                        fontWeight: FontWeight.w200
                      ),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                    ElevatedButton(
                      onPressed: (){},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        )
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Discover",
                            style: TextStyle(
                              color: AppColors.white
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: AppColors.white,
                          ),
                        ],
                      )
                    )
                  ],
                )
              ],
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(

                children: [
                  Image.asset(
                    AppAssets.productImage,
                    fit: BoxFit.fill,
                    width: MediaQuery.sizeOf(context).width * 0.3,
                  ),

                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.05,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Enhance your projects with the brilliance of our mining materials",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                        const Text(
                          "Our commitment to excellence goes beyond the surface it's embedded in every grain of silica sand, every crystal of salt, and every piece of gypsum. Explore the richness of our mining treasures, where precision meets passion. Craft your projects with the assurance of unparalleled quality, trust, and reliability.",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05,),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)
                            )
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "View Product",
                                style: TextStyle(
                                  color: AppColors.white
                                ),
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: AppColors.white,
                              )
                            ],
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1,),

            Container(
              padding: const EdgeInsets.all(40.0),
              color: AppColors.black,

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Column(
                        children: [
                          Image.asset(
                            AppAssets.logoImage,
                            fit: BoxFit.fill,
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),

                          const Row(
                            children: [
                              FooterIcon(iconImagePath: AppAssets.facebookIcon),
                              FooterIcon(iconImagePath: AppAssets.instagramIcon),
                              FooterIcon(iconImagePath: AppAssets.twitterIcon),
                              FooterIcon(iconImagePath: AppAssets.linkedinIcon),
                            ],
                          )
                        ],
                      ),

                      const SizedBox(),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          NavigationBarButton(title: "Company", isSelected: true),
                          NavigationBarButton(title: "Home", isSelected: false),
                          NavigationBarButton(title: "About Us", isSelected: false),
                          NavigationBarButton(title: "Products", isSelected: false),
                          NavigationBarButton(title: "Packing", isSelected: false),
                          NavigationBarButton(title: "Quality Control", isSelected: false),
                          NavigationBarButton(title: "Contact Us", isSelected: false),
                        ],
                      ),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          NavigationBarButton(title: "Legal", isSelected: true),
                          NavigationBarButton(title: "Privacy Policy", isSelected: false),
                          NavigationBarButton(title: "Terms & Conditions", isSelected: false),
                          NavigationBarButton(title: "Terms of uses", isSelected: false),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          const Text(
                            "Reach Us",
                            style: TextStyle(
                                color: AppColors.white
                            ),
                          ),
                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                          const ReachUsItem(title: "01001119755 / 01148893165 ", icon: Icons.wifi_calling_3),
                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                          const ReachUsItem(title: "01001119755 / 01148893165 ", icon: Icons.email),
                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                          const ReachUsItem(title: "01001119755 / 01148893165 ", icon: Icons.location_pin)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                  Divider(color: AppColors.white.withOpacity(0.3),),
                  Text(
                    "© 2024 All Rights Reserved",
                    style: TextStyle(
                      color: AppColors.white.withOpacity(0.5),
                      fontSize: 12.0
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
