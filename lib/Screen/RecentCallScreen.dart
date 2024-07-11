import 'package:cryptographic_assignment/Model/CallModel.dart';
import 'package:cryptographic_assignment/Screen/Reuseables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentCallsScreen extends StatefulWidget {
  @override
  State<RecentCallsScreen> createState() => _RecentCallsScreenState();
}

class _RecentCallsScreenState extends State<RecentCallsScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFF4F4F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: Image.asset('assets/images/Menu.png'),
            onPressed: () {},
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: ScreenWidth* 0.05,
              ),
              Text(
                'Recent Calls',
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              IconButton(
                icon: Image.asset('assets/images/Search.png'),
                onPressed: () {
                  print('Width: ${ScreenWidth.toStringAsFixed(2)} pixels\n'
                      'Height: ${ScreenHeight.toStringAsFixed(2)} pixels',
                  );
                },
              ),
              SizedBox(
                width: ScreenWidth* 0.02,
              ),
            ],
          ),
          SizedBox(
            height: ScreenHeight * 0.015,
          ),
          Container(
            width: ScreenWidth * 0.9,
            height: 1,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFF9B98A4),
                  width: 0.35,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: ScreenHeight * 0.026,
                  width: ScreenWidth * 0.14,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: Center(
                    child: Text(
                      'Today',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recentCalls.length,
              itemBuilder: (context, index) {
                final call = recentCalls[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ScreenWidth * 0.025,
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(call.avatarUrl),
                          ),
                          Positioned(
                            bottom: -1,
                            right: 4,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration:
                              BoxDecoration(
                                color:
                                    call.name == 'Kamatshi'
                                    ? Colors.orange
                                    : call.name == 'Robert'
                                    ? Colors.green
                                    : call.callType == CallType.incoming
                                        ? Colors.green
                                        : Colors.red
                                ,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: ScreenWidth * 0.025,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            call.name,
                            style: call.name == 'Robert'
                              ?  GoogleFonts.inter(
                              fontSize: 16.59,
                              fontWeight: FontWeight.w500,
                            )
                               :  GoogleFonts.inter(
                              fontSize: 16.59,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(call.phoneNumber,
                            style: GoogleFonts.inter(
                              fontSize: 12.44,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          call.callType == CallType.incoming
                              ? 'assets/images/Incoming.png'
                              : call.callType == CallType.missed
                              ? 'assets/images/Missed.png'
                              : 'assets/images/Missed.png',
                        ),
                      ),
                      SizedBox(
                        width: ScreenWidth * 0.009,
                      ),
                      Text(call.time,
                        style: GoogleFonts.inter(
                          fontSize: 10.14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: ScreenWidth * 0.025,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          width: ScreenWidth * 0.15,
          height: ScreenHeight * 0.8,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage('assets/images/Dialer.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}





