
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;
  int selectedCategory = 0;
  int selectedBanner = 0;

  final List<String> categories = [
    "Recommend",
    "Cell Phone",
    "Car Products",
    "Department Store",
    "Con"
  ];

  final List<String> banners = [
    "assets/images/banner.png",
    "assets/images/banner.png",
    "assets/images/banner.png",
    "assets/images/banner.png",
  ];

  final List<Map<String, String>> gridItems = [
    {"title": "Beauty", "img": "assets/icons/image1.png"},
    {"title": "Offers", "img": "assets/icons/image2.png"},
    {"title": "Fashion", "img": "assets/icons/image3.png"},
    {"title": "Home", "img": "assets/icons/image4.png"},
    {"title": "Shirt", "img": "assets/icons/image5.png"},
    {"title": "Woman Bag", "img": "assets/icons/image6.png"},
    {"title": "Dress", "img": "assets/icons/image7.png"},
    {"title": "Mobiles", "img": "assets/icons/image8.png"},
  ];

  final List<Map<String, dynamic>> products = [
    {
      "name": "Multi Kit",
      "price": "500",
      "rating": 4.6,
      "reviews": 86,
      "image": "assets/icons/makeup.png"
    },
    {
      "name": "Lipstick",
      "price": "400",
      "rating": 4.6,
      "reviews": 86,
      "image": "assets/icons/lipstic.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 🔥 BODY WITH SCROLL
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                // Top Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/menu-variant.png", height: 28),
                    Image.asset("assets/images/splash_logo.png", height: 48),
                    Row(
                      children: [
                        Image.asset("assets/images/Search.png", height: 26),
                        const SizedBox(width: 16),
                        Image.asset("assets/icons/Scan.png", height: 26),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                const Text("Hi, Andrea",
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 8),

                const Text(
                  "What are you looking for\ntoday?",
                  style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 18),

                // 🔥 Banner Carousel
                Column(
  children: [
    // Banner Image
    SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: banners.length,
        onPageChanged: (index) {
          setState(() => selectedBanner = index);
        },
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              banners[index],
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          );
        },
      ),
    ),

    const SizedBox(height: 8),

    // ✅ DOTS OUTSIDE IMAGE
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        banners.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 20),
          height: 8,
          width: selectedBanner == index ? 6 : 8,
          decoration: BoxDecoration(
            color: selectedBanner == index
                ? Colors.orange
                : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    ),
  ],
),

              

                const SizedBox(height: 1),

                // Tabs
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedCategory == index;
                      return GestureDetector(
                        onTap: () =>
                            setState(() => selectedCategory = index),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              Text(
                                categories[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 6),
                              if (isSelected)
                                Container(
                                    height: 3,
                                    width: 60,
                                    color: const Color(0xFFFF9800)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),


 // See more text on right
     // See more text aligned to right
    Align(
      alignment: Alignment.centerRight,
      child: Text(
        "See more",
        style: TextStyle(
          color: const Color(0xFFFF9800),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
 
                const SizedBox(height: 14),

                // 🔥 Category Grid (FIXED)
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.92,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: gridItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                              mainAxisSize: MainAxisSize.min, // 🔥 MOST IMPORTANT

                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border:
                                Border.all(color: Colors.grey.shade300),
                          ),
                          child: Center(
                            child: Image.asset(
                              gridItems[index]["img"]!,
                              height: 50,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          gridItems[index]["title"]!,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black54),
                        )
                      ],
                    );
                  },
                ),

                const SizedBox(height: 16),

                // Products


      SizedBox(
  height: 300,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: products.length,
    itemBuilder: (context, index) {
      final product = products[index];

      return Container(
        width: 220,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// IMAGE + HEART
            Stack(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Image.network(
                    product["image"],
                    fit: BoxFit.contain,
                  ),
                ),

                /// ❤️ HEART IMAGE
                Positioned(
                  top: 10,
                  left: 10,
                  child: Image.asset(
                    "assets/icons/heartunactive.png",
                    height: 22,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(14, 4, 14, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// PRODUCT NAME
                  Text(
                    product["name"],
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// PRICE + ADD BUTTON
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      /// PRICE
                    Text(
  "${product["price"]}",
  style: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ),
),

                      /// ADD BUTTON
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        
                        child: const Row(
  children: [
    Image(
      image: AssetImage("assets/icons/Cart.png"), // <-- your image
      height: 14,
      width: 14,
      color: Colors.white, // optional
    ),
    SizedBox(width: 4),
    Text(
      "Add",
      style: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    ),
  ],
),

                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  /// RATING + REVIEWS + DOTS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      /// STAR + RATING
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.orange,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "${product["rating"]}",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      /// REVIEWS
                      Text(
                        "${product["reviews"]} Reviews",
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),

                      /// DOTS ICON
                      Image.asset(
                        "assets/icons/more-vertical.png",
                        height: 24,
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
  ),
),


                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (index) => setState(() => selectedTab = index),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}






