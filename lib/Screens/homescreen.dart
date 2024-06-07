import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:coffee_shop/Screens/resturantdetails.dart';
import 'package:coffee_shop/Screens/userauthetication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'resturantmodel.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> featuredDishes = [
    'https://media.istockphoto.com/id/1443602402/photo/chicken-karahi-korma-msala-served-in-dish-isolated-on-table-top-view-of-asian-and-indian-food.jpg?s=612x612&w=0&k=20&c=Ir7YJfthuCg-nVxVStgSvV217pYSbvHVFTwFXTFtfmU=',
    'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg',
    'https://www.masala.tv/wp-content/uploads/2021/07/Sajji-pulaoo.jpg'
  ];

  final List<Restaurant> fastFoodRestaurants = [
    Restaurant(
      name: 'McDonald\'s',
      description: 'Fast food restaurant',
      address: '123 Main St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
    Restaurant(
      name: 'KFC',
      description: 'Fast food restaurant',
      address: '456 Main St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
    Restaurant(
      name: 'Burger King',
      description: 'Fast food restaurant',
      address: '789 Main St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
  ];

  final List<Restaurant> desiRestaurants = [
    Restaurant(
      name: 'Desi Dine',
      description: 'Desi food restaurant',
      address: '123 Desi St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
    Restaurant(
      name: 'Lahori Tikka',
      description: 'Desi food restaurant',
      address: '456 Desi St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
    Restaurant(
      name: 'Pakistani Grill',
      description: 'Desi food restaurant',
      address: '789 Desi St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
  ];

  final List<Restaurant> dessertRestaurants = [
    Restaurant(
      name: 'Sweet Tooth',
      description: 'Dessert restaurant',
      address: '123 Sweet St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
    Restaurant(
      name: 'Dessert Delights',
      description: 'Dessert restaurant',
      address: '456 Sweet St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
    Restaurant(
      name: 'Cakes & Bakes',
      description: 'Dessert restaurant',
      address: '789 Sweet St, Islamabad',
      latitude: 33.6844,
      longitude: 73.0479,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 90,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(
                    BootstrapIcons.geo_alt,
                    size: 15,
                  ),
                  Text(
                    'Islamabad, Pakistan',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  BootstrapIcons.bell,
                  color: Color(0xFFD6975D),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          width: 350,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            children: [
              Container(
                height: 100,
                child: const DrawerHeader(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          BootstrapIcons.person,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Qasim Nauman',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'm.qasimnauman@gmail.com',
                          )
                        ]
                      )
                    ]
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    BootstrapIcons.bell,
                  ),
                  title: const Text('Notification'),
                  onTap: () {
                    // Handle drawer item tap
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    BootstrapIcons.phone,
                  ),title: const Text('Call Center'),
                  onTap: () {
                    // Handle drawer item tap
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    BootstrapIcons.gear,
                  ),title: const Text('Settings'),
                  onTap: () {
                    // Handle drawer item tap
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    BootstrapIcons.heart,
                  ),title: const Text('Favourite'),
                  onTap: () {
                    // Handle drawer item tap
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: const Icon(
                    BootstrapIcons.box_arrow_left
                  ),title: const Text('Logout'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Loginsignup()));
                  },
                ),
              ),
            ],
          ),
        ),
        body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Good Morning,',
                style: GoogleFonts.sourceSans3(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Search';
                    }
                    return null;
                  },
                  enableSuggestions: true,
                  style: GoogleFonts.sourceSans3(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        BootstrapIcons.funnel_fill,
                        color: Colors.black,
                      ),
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        BootstrapIcons.search,
                        color: Colors.black,
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: GoogleFonts.sourceSans3(
                      fontSize: 14,
                      color: const Color.fromRGBO(0, 0, 0, 0.25),
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: const Color.fromRGBO(237, 236, 236, 1),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Featured Dishes',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
              items: featuredDishes.map((item) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                ),
              )).toList(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text
                          (
                  'Categories',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    PreferredSize(
                      preferredSize: const Size.fromHeight(50),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(245, 245, 245, 1),
                          ),
                          child: TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            dividerColor: Colors.transparent,
                            indicator: const BoxDecoration(
                              color: Color.fromRGBO(214, 151, 93, 1),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black54,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Fast',
                                  style: GoogleFonts.sourceSans3(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Desi',
                                  style: GoogleFonts.sourceSans3(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Desserts',
                                  style: GoogleFonts.sourceSans3(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.builder(
                            itemCount: fastFoodRestaurants.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(fastFoodRestaurants[index].name),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RestaurantDetailScreen(
                                        restaurant: fastFoodRestaurants[index],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          ListView.builder(
                            itemCount: desiRestaurants.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(desiRestaurants[index].name),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RestaurantDetailScreen(
                                        restaurant: desiRestaurants[index],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          ListView.builder(
                            itemCount: dessertRestaurants.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(dessertRestaurants[index].name),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RestaurantDetailScreen(
                                        restaurant: dessertRestaurants[index],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
