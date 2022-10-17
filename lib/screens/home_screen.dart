import 'package:flutter/material.dart';
import '../widgets/cards.dart';
import '../widgets/category_items.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Digital Diagnostic Lab',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(4, 167, 84, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'assets/images/xray2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'We Care About Your Families!',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Get your medical reports in no time!',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(186, 206, 166, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'OUR SERVICES',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CategoryItems(
                  categoryName: 'Diagnosis',
                  iconImagePath: 'assets/images/xrayLogo1.png',
                ),
                CategoryItems(
                  categoryName: 'Prescription',
                  iconImagePath: 'assets/images/prescription1.png',
                ),
                CategoryItems(
                  categoryName: 'Appointment',
                  iconImagePath: 'assets/images/appointment1.png',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            child: ListView(
              children: <Widget>[
                cardItems(
                  catName: 'Digital X-rays on-site',
                  cardImagePath: 'assets/images/xrayLogo1.png',
                  description: 'Get your xrays scanned in no time!',
                ),
                cardItems(
                  catName: 'MRI Scan',
                  cardImagePath: 'assets/images/mri.png',
                  description: 'Get report for your MRI now!!',
                ),
                cardItems(
                  catName: 'CT Scan',
                  cardImagePath: 'assets/images/tomography.png',
                  description: 'Get report for your CT scans now!!',
                ),
                cardItems(
                  catName: 'Appointment',
                  cardImagePath: 'assets/images/appointment1.png',
                  description: 'Set your appointments now!!',
                ),
                cardItems(
                  catName: 'Settings',
                  cardImagePath: 'assets/images/settings.png',
                  description: 'Manage your application and content',
                ),
                cardItems(
                  catName: 'Profile',
                  cardImagePath: 'assets/images/profile.png',
                  description: 'manage your account and save your records',
                ),
              ],
            ),
          ),
          // Container(
          //   height: 435,
          //   child: GridView(
          //     // padding: const EdgeInsets.all(25),
          //     // children: DUMMY_CATEGORIES
          //     //     .map(
          //     //       (catData) => CategoryItems(
          //     //         catData.title,
          //     //         catData.color,
          //     //       ),
          //     //     )
          //     //     .toList(),
          //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //       maxCrossAxisExtent: 200,
          //       childAspectRatio: 3 / 2,
          //       crossAxisSpacing: 20,
          //       mainAxisSpacing: 20,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
