import 'package:flutter/material.dart';
import 'home_roma.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Dashboard Penjualan',
              style: TextStyle(
                fontFamily: 'Readex Pro',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                title: 'Barang',
                value: '125415',
                isTitleBold: true,
                color: Color(0xFFc42e1d),
                textColor: Colors.white,
              ),
              CustomCard(
                title: 'Stok Barang',
                value: '200',
                isTitleBold: true,
                color: Color(0xFFc42e1d),
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                title: 'Customer',
                value: '1000',
                isTitleBold: true,
                color: Color(0xFFc42e1d),
                textColor: Colors.white,
              ),
              CustomCard(
                title: 'Toko',
                value: '50',
                isTitleBold: true,
                color: Color(0xFFc42e1d),
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                title: '-------',
                value: '125415',
                isTitleBold: true,
                color: Color(0xFFc42e1d),
                textColor: Colors.white,
              ),
              CustomCard(
                title: '--------',
                value: '200',
                isTitleBold: true,
                color: Color(0xFFc42e1d),
                textColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String value;
  final bool isTitleBold;
  final Color color;
  final Color textColor;

  const CustomCard({
    this.title,
    this.value,
    this.isTitleBold = false,
    this.color = const Color(0xFFc42e1d),
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 170,
        height: 130,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 14,
                  fontWeight: isTitleBold ? FontWeight.bold : FontWeight.normal,
                  color: textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                value,
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                  color: textColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lihat Detail',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
