import 'package:flutter/material.dart';
import 'home_roma.dart';

class Pelanggan extends StatelessWidget {
  // const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: ListView(
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(-1, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 16),
                    child: Container(
                      width: 90,
                      height: 90,
                    )
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 16, 0, 0),
            child: Text(
              'Pengaturan Aplikasi',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
            child: InkWell(
              onTap: () {
                // Tindakan yang ingin dilakukan saat container dipencet
                print('Container Ditekan!');
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x33000000),
                      offset: Offset(0, 1),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          'sugeng',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.9, 0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF57636C),
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ////////////////////// tambahin button logout
        ],
      ),
    );
  }
}
