import 'package:covid_app_flutter_ui/utils/const.dart';
import 'package:covid_app_flutter_ui/widgets/main_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Berlin, Germany'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        leading: const Icon(Icons.sort),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  const Icon(Icons.notifications_none),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/covid-bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          '6738',
                          style: Constants.headline1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Total Cases',
                          style: Constants.bodyText1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 18),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image.asset(
                                  'assets/doctor.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Symptom\nChecker',
                                      style: Constants.headline2,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Based on common\nsymptoms',
                                      style: Constants.bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const MainRow(
                        'assets/map.svg',
                        'assets/virus.svg',
                        'assets/upload.svg',
                        'Map\n',
                        '   Risk of\n  Infection',
                        'Upload\n  Data'),
                    const MainRow(
                        'assets/trend.svg',
                        'assets/FaceMask.svg',
                        'assets/phone.svg',
                        'Statistics',
                        'Protection',
                        'Contacts'),
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
