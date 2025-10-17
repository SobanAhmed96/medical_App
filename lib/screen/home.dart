import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Panadol Extra",
      "category": "Pain Relief",
      "price": 150,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Disprin",
      "category": "Pain Relief",
      "price": 120,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Brufen 400mg",
      "category": "Pain Relief",
      "price": 200,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Augmentin 625mg",
      "category": "Antibiotic",
      "price": 650,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Calpol Syrup",
      "category": "Fever Relief",
      "price": 180,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Flagyl 400mg",
      "category": "Antibiotic",
      "price": 250,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Ventolin Inhaler",
      "category": "Asthma",
      "price": 780,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Cetrizine 10mg",
      "category": "Allergy Relief",
      "price": 90,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Ponstan 500mg",
      "category": "Pain Relief",
      "price": 220,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Gaviscon Syrup",
      "category": "Antacid",
      "price": 450,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Nexum 40mg",
      "category": "Antacid",
      "price": 550,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "ORS Sachets",
      "category": "Hydration",
      "price": 50,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Betadine Solution",
      "category": "Antiseptic",
      "price": 400,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Soframycin Cream",
      "category": "Skin Care",
      "price": 350,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Deep Heat Rub",
      "category": "Muscle Pain",
      "price": 300,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Panadol Cold & Flu",
      "category": "Cold/Flu",
      "price": 190,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Strepsils",
      "category": "Throat Care",
      "price": 120,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Vicks Vaporub",
      "category": "Cold Relief",
      "price": 250,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Dettol Hand Sanitizer",
      "category": "Hygiene",
      "price": 180,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Lifebuoy Handwash",
      "category": "Hygiene",
      "price": 220,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Accu-Chek Glucometer",
      "category": "Device",
      "price": 4500,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Digital Thermometer",
      "category": "Device",
      "price": 1000,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "BP Monitor (Omron)",
      "category": "Device",
      "price": 7800,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Surgical Mask (Box of 50)",
      "category": "Hygiene",
      "price": 600,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Cotton Roll 500g",
      "category": "First Aid",
      "price": 250,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Band Aid Pack",
      "category": "First Aid",
      "price": 150,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Crepe Bandage",
      "category": "First Aid",
      "price": 300,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Multivitamin Tablets",
      "category": "Supplement",
      "price": 850,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Vitamin C 1000mg",
      "category": "Supplement",
      "price": 500,
      "image": "assets/images/Logo.png",
    },
    {
      "name": "Glucerna SR",
      "category": "Nutrition",
      "price": 2000,
      "image": "assets/images/Logo.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/images/Profile.png",
                            width: 60,
                            height: 55,
                            fit: BoxFit.fill,
                          ),
                          trailing: SizedBox(
                            width: 60,
                            child: Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Icon(
                                      Icons.notifications_none_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    Positioned(
                                      top: 1,
                                      right: 4,
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 5,
                            right: 20,
                            left: 20,
                          ),
                          child: Text(
                            "Hi, Shahzeb",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            bottom: 5,
                            right: 20,
                            left: 20,
                          ),
                          child: Text(
                            "Welcome to Quick Medical Store",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -25,
                  left: 20,
                  right: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Medicine & Healthcare products",
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 228, 228),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 28,
                              ),
                              Text("Dental", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(2),

                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 228, 228),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.greenAccent,
                                radius: 28,
                              ),
                              Text("Wellness", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(2),

                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 228, 228),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 28,
                              ),
                              Text("Homeo", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(2),

                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 228, 228),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 28,
                              ),
                              Text("Eye care", style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/Image1.png",
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30, left: 15),
                          child: Column(
                            children: [
                              Text(
                                "Save extra on \nevery order",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Etiam mollis \nmetus non faucibus . ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),
                  Text(
                    "Deals of the Day",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(12),
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // 2 cards per row
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.75, // height/width ratio
                        ),
                    itemBuilder: (context, index) {
                      final product = products[index];

                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // 🖼️ Product Image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  product["image"],
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),

                            // 🏷️ Product Name
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(
                                product["name"],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            // 💸 Price
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                "Rs. ${product["price"]}",
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            const Spacer(),

                            // 🛒 Add to Cart Button
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  minimumSize: const Size(double.infinity, 36),
                                ),
                                onPressed: () {
                                  // 🧩 Add your cart logic here
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '${product["name"]} added to cart!',
                                      ),
                                      duration: const Duration(seconds: 1),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
