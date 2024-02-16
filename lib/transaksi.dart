import 'package:flutter/material.dart';
import 'detail_transaksi.dart';
import 'home_roma.dart';

// class Transaksi extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Tap Untuk ke Halaman Beranda'),
//       // child: RaisedButton(
//       //   onPressed: () {
//       //     Route route = MaterialPageRoute(builder: (context) => BerandaPage());
//       //     Navigator.push(context, route);
//       //   },
//       //   child: Text('Tap Untuk ke Halaman Beranda'),
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TransaksiDetailWidget extends StatefulWidget {
  const TransaksiDetailWidget({Key key}) : super(key: key);

  @override
  State<TransaksiDetailWidget> createState() => _TransaksiDetailWidgetState();
}

class _TransaksiDetailWidgetState extends State<TransaksiDetailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (scaffoldKey.currentState.isDrawerOpen) {
          scaffoldKey.currentState.openEndDrawer();
        } else {
          scaffoldKey.currentState.openDrawer();
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF15161E),
              size: 30,
            ),
            onPressed: () async {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 12, 8),
              child: IconButton(
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Color(0xFF15161E),
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment(0, -1),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        MediaQuery.of(context).size.width >= 1270.0
                            ? 24.0
                            : 0.0,
                        0,
                        0),
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 570,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(16, 12, 16, 12),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'berhubung gweh gatau mau ngisi apa disini kalian nanti saran aja :)',
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF606A85),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: Color(0xFFE5E7EB),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Transaction Number :',
                                                style: TextStyle(),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 90, 0),
                                                child: Text(
                                                  'POS-404',
                                                  style: TextStyle(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Transaction Date       :',
                                                style: TextStyle(),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 90, 0),
                                                child: Text(
                                                  '11-1-2024',
                                                  style: TextStyle(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Customer                   :',
                                                style: TextStyle(),
                                              ),
                                              Text(
                                                'Mamang racing',
                                                style: TextStyle(),
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 19,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        // New Row for Discounts
                                        // Padding(
                                        //   padding:
                                        //       EdgeInsets.fromLTRB(0, 12, 0, 0),
                                        //   child: Row(
                                        //     mainAxisSize: MainAxisSize.max,
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.spaceBetween,
                                        //     children: [
                                        //       Text(
                                        //         'Discounts                   :',
                                        //         style: TextStyle(),
                                        //       ),
                                        //       Text(
                                        //         '10% off',
                                        //         style: TextStyle(),
                                        //       ),
                                        //       IconButton(
                                        //         icon: Icon(
                                        //           Icons.remove,
                                        //           size: 19,
                                        //         ),
                                        //         onPressed: () {
                                        //           print('Remove discount ...');
                                        //         },
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),
                                        // End of Discounts Row
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 12, 0, 0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailsTransaksiWidget(),
                                                ),
                                              );
                                            },
                                            child: Text('Detail')
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
