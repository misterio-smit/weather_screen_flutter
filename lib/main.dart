import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          title: const Text(
            'Weather Forecast',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _headerDetail(),
          const SizedBox(height: 15.0),
          _citiDetail(),
          const SizedBox(height: 50.0),
          _temperatureDetail(),
          const SizedBox(height: 40.0),
          _extraWeatherDetail(),
          const SizedBox(height: 40.0),
          _bottomDetail(),
          _horisontalListView(),
        ],
      ),
    );
  }

  _headerDetail() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 10.0, bottom: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: const <Widget>[
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(width: 10.0),
              Text('Enter City Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  _citiDetail() {
    return Column(
      children: const [
        Text(
          'Tomskaya Oblast, RU',
          style: TextStyle(
            fontSize: 33.0,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Friday, Mar 20, 2022',
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Row _temperatureDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: const [
            Icon(Icons.wb_sunny, size: 70.0, color: Colors.white),
          ],
        ),
        const SizedBox(width: 20.0),
        Column(
          children: [
            Row(
              children: const [
                Text(
                  '14 °F',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'light Snow'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  _extraWeatherDetail() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.ac_unit,
                  size: 28.0,
                  color: Colors.white,
                ),
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Text(
                'km/hr',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.ac_unit,
                  size: 28.0,
                  color: Colors.white,
                ),
              ),
              Text(
                '3',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Text(
                '%',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.ac_unit,
                  size: 28.0,
                  color: Colors.white,
                ),
              ),
              Text(
                '20',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Text(
                '%',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _bottomDetail() {
    return Column(
      children: [
        Text(
          '7-day weather forcast'.toUpperCase(),
          style: const TextStyle(
            fontSize: 17.0,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  Widget _horisontalListView() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 15.0, right: 20.0),
              margin: const EdgeInsets.only(right: 10.0, bottom: 25.0),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Column(
                children: [
                  const Text(
                    'Monday',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '7 °F',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 15.0, right: 20.0),
              margin: const EdgeInsets.only(bottom: 25.0, right: 10.0),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Column(
                children: [
                  const Text(
                    'Tuesday',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '5 °F',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 15.0, right: 20.0),
              margin: const EdgeInsets.only(bottom: 25.0, right: 10.0),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Column(
                children: [
                  const Text(
                    'Wednesday',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '6 °F',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 15.0, right: 20.0),
              margin: const EdgeInsets.only(bottom: 25.0, right: 10.0),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Column(
                children: [
                  const Text(
                    'Thursday',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '7 °F',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 15.0, right: 20.0),
              margin: const EdgeInsets.only(bottom: 25.0, right: 10.0),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Column(
                children: [
                  const Text(
                    'Friday',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '5 °F',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 15.0, right: 20.0),
              margin: const EdgeInsets.only(bottom: 25.0, right: 10.0),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Column(
                children: [
                  const Text(
                    'Saturday',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '5 °F',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 15.0, right: 20.0),
              margin: const EdgeInsets.only(bottom: 25.0, right: 10.0),
              decoration: const BoxDecoration(color: Colors.white24),
              child: Column(
                children: [
                  const Text(
                    'Sunday',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '4 °F',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
