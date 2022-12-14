// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../screens/daily_expenses.dart';
import '../screens/monthly_expenses.dart';
import '../widgets/drawer.dart';

class ExpensesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: AppColours.background,
          drawer: MainDrawer(),
          appBar: AppBar(
            backgroundColor: AppColours.background,
            iconTheme: IconThemeData(
              color: AppColours.bgSky,
            ),
            title: Center(
              child: Text(
                'Expenses',
                style: GoogleFonts.roboto(
                  color: AppColours.textHeading,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.filter_list,
                ),
                color: AppColours.bgSky,
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              indicatorColor: AppColours.bgSky,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Daily',
                    style: GoogleFonts.roboto(
                      color: AppColours.textHeading,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Monthly',
                    style: GoogleFonts.roboto(
                      color: AppColours.textHeading,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              DailyExpensesPage(),
              MonthlyExpensesPage(),
            ],
          )),
    );
  }
}
