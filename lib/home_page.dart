// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code
import 'package:flutter/material.dart';
import 'package:data_tables/data_tables.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> habits = ["Read a book", "Exercise", "Wake up at 5am", "Pray"];
  List<DateTime> dates = [];
  List<List<String>> tableData = [];
  int dayOffset = 4; // Start with 4 days ahead (including current day)

  @override
  void initState() {
    super.initState();
    DateTime currentDate = DateTime.now();
    for (int i = 0; i < 5; i++) {
      dates.add(currentDate.add(Duration(days: dayOffset)));
      dayOffset--; // Decrement day offset to go one day back
    }

    tableData = List.generate(
        habits.length,
        (index) => List.filled(dates.length,
            "habit1")); //For each item in the generated list (each row), the code calls a function that creates another list using List.filled.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 169, 0).withAlpha(50),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Drawer(
                backgroundColor: Colors.grey,
                shape: CircleBorder(),
              );
            },
            icon: Icon(Icons.menu_rounded)),
        title: Text(
          "Homepage",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          // Padding(padding: EdgeInsets.only(left: 20)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: ClipOval(child: Image.asset("assets/avatar.jpg")),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.white,
              height: 160,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "We first make our habits, and then our habits makes us."
                                .toUpperCase(),
                            style: TextStyle(
                              fontFamily: 'Klasik',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(57, 33, 53, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '- ANONYMOUS',
                            style: TextStyle(
                                color: Color.fromRGBO(57, 33, 53, 1)
                                    .withAlpha(100),
                                fontFamily: 'Manrope',
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/intro1.png',
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
         Expanded(
           child: Stack(
            children: [
                     Image.asset("assets/Background.png",
                     fit: BoxFit.cover,
                     height: double.maxFinite,
                    
           
                ),
               Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        //custom heading for the first column
                        DataColumn(
                          label: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Habits",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                          ],
                        )),
                        
                        //Date columns with formatted headings
                        //The spread operator... takes the list of DataColumn objects created by the map function and inserts them as individual columns within the DataTable's columns property.
                        //The map function iterates over each date in the dates list. For each date, it creates a new DataColumn object using the provided function.
                        //...dates.map((date) => DataColumn( ... )).toList():
                        ...dates.map((date) => DataColumn(
                          label: Container(
                            width: 55,
                            // height: 100,
                            // padding: EdgeInsets.only(bottom: 10),
                            margin: EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)
                            ),
                            child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(DateFormat('EE').format(date), 
                              style: TextStyle(fontSize: 12, color: Colors.grey),),
                              Text(DateFormat('D').format(date),
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                ],
                              )
                            
                          )
                          ))
                          .toList(),
                      ], 
                  
                      //habits.map((habit) => DataRow(cells: ... )).toList()
                      //iterates over each habit in the habits list. For each habit, it creates a new DataRow object using the provided function.
                      rows: habits.map((habit) => 
                      
                      DataRow(
                        cells: [
                          DataCell(Text(habit)),
                          ...dates.map((date) => DataCell(
                            Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                color: _getRowColor(habit),
                                borderRadius: BorderRadius.circular(5)
                              )
                              ))).toList(), 
                          //This creates a DataCell object that displays the value from the tableData list corresponding to the current habit and date. 
                          //It uses indexOf to find the correct indices within the 2D list.
                        ])).toList(),
                        
                        headingRowHeight: 50,
                        border: TableBorder(borderRadius: BorderRadius.circular(30), bottom: BorderSide(color: Colors.transparent, width: 10, )),
                        dataRowColor: MaterialStatePropertyAll(Colors.white),
                        
                      ),
                  ),
              ),
            ),   
            ],
           ),
         )
        ],
      ),
      bottomNavigationBar:  BottomAppBar(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        color: Colors.white,
        shape:CircularNotchedRectangle(),
        notchMargin: 16,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.house_rounded,
              color: Color.fromRGBO(57, 33, 53, 1),
              )),
              IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.bookmark_add_rounded,
              color: Color.fromRGBO(57, 33, 53, 1),
              )),
              IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.people_rounded,
              color: Color.fromRGBO(57, 33, 53, 1),
              )),
              IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings,
              color: Color.fromRGBO(57, 33, 53, 1),
              )),
          ],
        ),
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 254, 169, 0),   
        elevation: 5,
        tooltip: "Add a habit",
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
     

            
 

    );

  }
      Color  _getRowColor(String habit){
      switch (habit){
        case "Read a book":
          return const Color.fromRGBO(255, 179, 0, 1);
        case "Exercise":
          return const Color.fromRGBO(230, 81, 0, 1);
        case "Wake up at 5am":
          return const Color.fromRGBO(13, 71, 161, 1);
        case "Pray":
          return const Color.fromRGBO(62, 39, 35, 1);
        default:
          return const Color.fromRGBO(97, 97, 97, 1);
      }
    }
}
