import 'dart:math';
import 'package:characters/characters.dart';
import 'package:flutter/material.dart';

String? name = '';
String? password = '';

final List<String> wisata = <String>[
  'Jumog',
  'Parang Ijo',
  'Tenggir park',
  'IDN',
  'Segoro Ijo',
  'Telaga Madirda'
];

final List titleimg = [
  'https://images.locationscout.net/2018/05/jumog-waterfall-solo-central-java-indonesia.jpg?h=1100&q=83',
  'https://s3.ap-southeast-1.amazonaws.com/cdn.orbit/wp-content/uploads/2022/01/18140658/air-terjun-parang-ijo1.jpg',
  'https://hariliburnasional.com/wp-content/uploads/2021/10/Wisata-Tenggir-Park-Karanganyar.jpg',
  'https://solo.idn.sch.id/style/assets/img/portfolio/fasilitas_7.jpg',
  'https://i.ytimg.com/vi/cnzNBs_kPPs/maxresdefault.jpg',
  'https://1.bp.blogspot.com/-kGke83N5ohs/XvGoKYtI9JI/AAAAAAAAIp8/acRwZMvlraAGLHeTGE3qVeAbQCPaz-IpgCLcBGAsYHQ/s1600/tiket-masuk-dan-lokasi-telaga-madirda-karanganyar-terbaru-2020.jpg'
];

String desc =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae tortor condimentum lacinia quis vel eros. Aliquam sem fringilla ut morbi tincidunt. Nulla porttitor massa id neque aliquam.';
String truncated = desc.substring(0, 50);

final List hours = [
  '08.00 - 17.00',
  '07.00 - 15.00',
  '06.30 - 18.00',
  '24hr',
  '09.00 - 19.00',
  '08.00 - 14.00'
];

final List<String> pricelist = [
  'Rp 10.000',
  'Rp 7.000',
  'Rp 15.000',
  'Rp 32.000.000',
  'Rp 18.000',
  'Rp 12.000',
];
