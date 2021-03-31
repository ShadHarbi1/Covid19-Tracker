import 'package:auto_size_text/auto_size_text.dart';
import 'package:covid_19/data/apiData.dart';
import 'package:covid_19/models/Tcases.dart';
import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ApiData apiData = ApiData();
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _totalStatsGrid(Colors.orange, 'Total', '1.8M'),
                _deathsStatsGrid(Colors.red, 'Deaths', '30k'),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _recoveredStatsGrid(Colors.green, 'Recovered', '3.1M'),
                _activeStatsGrid(Colors.purple, 'Active', '3k'),
                _criticalStatsGrid(Colors.blue, 'Critical', '200'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Expanded _totalStatsGrid(MaterialColor color, String title, String count) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            // Here fetch the total
            FutureBuilder<Tcases>(
                future: ApiData().getJsonData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final covid = snapshot.data;
                    return AutoSizeText(
                      "${covid.cases} ",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error.toString());
                  }
                  return CircularProgressIndicator();
                })
          ],
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }

  Expanded _deathsStatsGrid(MaterialColor color, String title, String count) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            FutureBuilder<Tcases>(
                future: ApiData().getJsonData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final covid = snapshot.data;
                    return AutoSizeText(
                      "${covid.deaths} ",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error.toString());
                  }
                  return CircularProgressIndicator();
                })
          ],
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }

  Expanded _recoveredStatsGrid(
      MaterialColor color, String title, String count) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            FutureBuilder<Tcases>(
                future: ApiData().getJsonData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final covid = snapshot.data;
                    return AutoSizeText(
                      "${covid.recovered} ",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error.toString());
                  }
                  return CircularProgressIndicator();
                })
          ],
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }

  Expanded _activeStatsGrid(MaterialColor color, String title, String count) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            FutureBuilder<Tcases>(
                future: ApiData().getJsonData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final covid = snapshot.data;
                    return AutoSizeText(
                      "${covid.active} ",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error.toString());
                  }
                  return CircularProgressIndicator();
                })
          ],
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }

  Expanded _criticalStatsGrid(MaterialColor color, String title, String count) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            FutureBuilder<Tcases>(
                future: ApiData().getJsonData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final covid = snapshot.data;
                    return AutoSizeText(
                      "${covid.critical} ",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error.toString());
                  }
                  return CircularProgressIndicator();
                })
          ],
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
