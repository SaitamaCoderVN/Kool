import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kool/dashboard_screen.dart';

import '../note/notes_class.dart';
import '../note/notes_screen.dart';

String get noteName {
  if (NoteOOP.noteN.isNotEmpty) {
    return NoteOOP.noteN[0];
  } else {
    return '';
  }
}

String get noteContent {
  if (NoteOOP.noteN.isNotEmpty) {
    return NoteOOP.noteN[1];
  } else {
    return '';
  }
}

class RevisionNotesScreen extends StatefulWidget {
  @override
  _RevisionNotesScreenState createState() => _RevisionNotesScreenState();
}

class WidgetModel {
  final String name;
  final String avatar;
  WidgetModel(this.name, this.avatar);

  // Constructor with one parameter
  WidgetModel.fromName(this.name, this.avatar);
}

class _RevisionNotesScreenState extends State<RevisionNotesScreen> {
  // final List<WidgetModel> _widgets = [];
  // final TextEditingController _textFieldController = TextEditingController();

  // void _showErrorDialog() {
  //   Navigator.of(context).pop();
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: const Text('Error'),
  //       content: const Text('Widget name same a other widget.'),
  //       actions: [
  //         TextButton(
  //           onPressed: () => Navigator.pop(context),
  //           child: const Text('OK'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 55),
            Row(
              children: [
                const SizedBox(width: 150),
                const Text(
                  'Revision',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const SizedBox(width: 90),
                IconButton(
                  icon: SvgPicture.string(
                      '''<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M11.6971 1.89062L1.80891 12.4943" stroke="black" stroke-width="2.05282" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M1.80891 1.89062L11.6971 12.4943" stroke="black" stroke-width="2.05282" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>'''), // Fixed the icon name
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashBoardScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 15.54),
            Row(
              children: [
                const SizedBox(width: 38),
                SvgPicture.asset('assets/svg/3.svg'),
                const SizedBox(width: 19),
                const Text(
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    'English')
              ],
            ),
            const SizedBox(height: 10.46),
            Row(
              children: [
                const SizedBox(width: 56),
                SvgPicture.string(
                    '''<svg width="8" height="14" viewBox="0 0 8 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7 13L1 7L7 1" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
'''),
                const SizedBox(width: 97),
                Text(
                  noteName,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 97),
                SvgPicture.string(
                    '''<svg width="8" height="14" viewBox="0 0 8 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1 13L7 7L1 1" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
'''),
              ],
            ),
            const SizedBox(height: 12.45),
            SvgPicture.string(
                '''<svg width="301" height="2" viewBox="0 0 301 2" fill="none" xmlns="http://www.w3.org/2000/svg">
<line x1="0.996552" y1="1.48645" x2="300.003" y2="1.48645" stroke="#848282"/>
</svg>
'''),
            const SizedBox(height: 5),
            SizedBox(
              height: 478,
              width: 290,
              child:
                  Align(alignment: Alignment.topLeft, child: Text(noteContent)),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  const SizedBox(width: 24),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotesScreen(
                                  noteName: noteName,
                                  noteContent: noteContent,
                                )),
                      );
                    },
                    child: SvgPicture.string(
                        '''<svg width="158" height="40" viewBox="0 0 158 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <rect width="158" height="40" rx="20" fill="#B9CBD2"/>
                  <path d="M65.1671 15.2552V19.6477H69.9555V21.0616H65.1671V25.5861H70.5211V27H63.4516V13.8413H70.5211V15.2552H65.1671ZM72.0612 21.7969C72.0612 20.7411 72.2749 19.8174 72.7022 19.0256C73.1295 18.2213 73.7139 17.5992 74.4554 17.1593C75.2095 16.7194 76.0515 16.4995 76.9816 16.4995C77.7859 16.4995 78.5337 16.688 79.2249 17.065C79.9162 17.4295 80.444 17.9134 80.8085 18.5166V13.0495H82.5429V27H80.8085V25.0582C80.4692 25.6741 79.9665 26.1831 79.3004 26.5853C78.6343 26.9749 77.855 27.1697 76.9627 27.1697C76.0453 27.1697 75.2095 26.9434 74.4554 26.491C73.7139 26.0385 73.1295 25.4039 72.7022 24.5869C72.2749 23.77 72.0612 22.84 72.0612 21.7969ZM80.8085 21.8157C80.8085 21.0365 80.6514 20.3578 80.3372 19.7797C80.023 19.2016 79.5957 18.7617 79.0553 18.4601C78.5274 18.1459 77.943 17.9888 77.302 17.9888C76.6611 17.9888 76.0767 18.1396 75.5488 18.4412C75.021 18.7428 74.5999 19.1827 74.2857 19.7608C73.9715 20.339 73.8144 21.0176 73.8144 21.7969C73.8144 22.5886 73.9715 23.2799 74.2857 23.8706C74.5999 24.4487 75.021 24.8949 75.5488 25.2091C76.0767 25.5107 76.6611 25.6615 77.302 25.6615C77.943 25.6615 78.5274 25.5107 79.0553 25.2091C79.5957 24.8949 80.023 24.4487 80.3372 23.8706C80.6514 23.2799 80.8085 22.5949 80.8085 21.8157ZM85.9133 14.9913C85.5865 14.9913 85.31 14.8782 85.0838 14.652C84.8576 14.4257 84.7445 14.1492 84.7445 13.8225C84.7445 13.4957 84.8576 13.2192 85.0838 12.993C85.31 12.7668 85.5865 12.6537 85.9133 12.6537C86.2275 12.6537 86.4914 12.7668 86.7051 12.993C86.9313 13.2192 87.0444 13.4957 87.0444 13.8225C87.0444 14.1492 86.9313 14.4257 86.7051 14.652C86.4914 14.8782 86.2275 14.9913 85.9133 14.9913ZM86.7428 16.6691V27H85.0272V16.6691H86.7428ZM91.3444 18.083V24.1722C91.3444 24.6749 91.4512 25.0331 91.6649 25.2468C91.8785 25.4479 92.2493 25.5484 92.7772 25.5484H94.0402V27H92.4944C91.5392 27 90.8228 26.7801 90.3453 26.3402C89.8677 25.9003 89.6289 25.1776 89.6289 24.1722V18.083H88.2904V16.6691H89.6289V14.0676H91.3444V16.6691H94.0402V18.083H91.3444Z" fill="#4CA5CA"/>
                  </svg>
                  '''),
                  ),
                  const SizedBox(width: 17),
                  SvgPicture.string(
                      '''<svg width="158" height="40" viewBox="0 0 158 40" fill="none" xmlns="http://www.w3.org/2000/svg">
<rect width="158" height="40" rx="20" fill="#B9CBD2"/>
<path d="M20.6179 27.132C19.7507 27.132 18.9715 26.9811 18.2802 26.6795C17.6016 26.3653 17.0674 25.938 16.6778 25.3976C16.2882 24.8446 16.0871 24.2099 16.0746 23.4935H17.9032C17.966 24.1094 18.2174 24.6309 18.6573 25.0582C19.1097 25.473 19.7633 25.6804 20.6179 25.6804C21.4348 25.6804 22.0758 25.4793 22.5408 25.0771C23.0184 24.6624 23.2572 24.1345 23.2572 23.4935C23.2572 22.9908 23.1189 22.5824 22.8424 22.2682C22.5659 21.954 22.2203 21.7152 21.8056 21.5518C21.3908 21.3884 20.8315 21.2124 20.1277 21.0239C19.2605 20.7977 18.563 20.5715 18.0352 20.3453C17.5199 20.119 17.0737 19.7671 16.6967 19.2895C16.3322 18.7994 16.15 18.1459 16.15 17.3289C16.15 16.6126 16.3322 15.9779 16.6967 15.4249C17.0611 14.8719 17.5702 14.4446 18.2237 14.143C18.8898 13.8413 19.6502 13.6905 20.5048 13.6905C21.7364 13.6905 22.7419 13.9984 23.5211 14.6143C24.3129 15.2301 24.759 16.047 24.8596 17.065H22.9744C22.9115 16.5623 22.6476 16.1224 22.1826 15.7454C21.7176 15.3558 21.1018 15.161 20.3351 15.161C19.6187 15.161 19.0343 15.3495 18.5819 15.7265C18.1294 16.091 17.9032 16.6063 17.9032 17.2724C17.9032 17.75 18.0352 18.1396 18.2991 18.4412C18.5756 18.7428 18.9086 18.9753 19.2982 19.1387C19.7004 19.2895 20.2597 19.4655 20.9761 19.6666C21.8433 19.9054 22.5408 20.1442 23.0686 20.383C23.5965 20.6092 24.0489 20.9674 24.426 21.4575C24.803 21.9351 24.9915 22.5886 24.9915 23.4181C24.9915 24.0591 24.8219 24.6624 24.4825 25.2279C24.1432 25.7935 23.6405 26.2522 22.9744 26.6041C22.3083 26.956 21.5228 27.132 20.6179 27.132ZM36.5273 21.4387C36.5273 21.7654 36.5085 22.1111 36.4708 22.4755H28.2136C28.2764 23.4935 28.6221 24.2916 29.2505 24.8697C29.8914 25.4353 30.6644 25.7181 31.5693 25.7181C32.3108 25.7181 32.9266 25.5484 33.4167 25.2091C33.9195 24.8572 34.2714 24.3921 34.4725 23.814H36.32C36.0435 24.8069 35.4905 25.6175 34.661 26.2459C33.8315 26.8618 32.8009 27.1697 31.5693 27.1697C30.589 27.1697 29.7092 26.9497 28.93 26.5098C28.1633 26.07 27.5601 25.4479 27.1202 24.6435C26.6803 23.8266 26.4604 22.884 26.4604 21.8157C26.4604 20.7474 26.674 19.8111 27.1013 19.0068C27.5287 18.2024 28.1256 17.5866 28.8923 17.1593C29.6715 16.7194 30.5638 16.4995 31.5693 16.4995C32.5496 16.4995 33.4167 16.7131 34.1708 17.1404C34.9249 17.5677 35.503 18.1584 35.9052 18.9125C36.32 19.654 36.5273 20.4961 36.5273 21.4387ZM34.7552 21.0805C34.7552 20.4269 34.6107 19.8677 34.3216 19.4027C34.0326 18.9251 33.6367 18.5669 33.134 18.3281C32.6438 18.0767 32.0971 17.9511 31.4938 17.9511C30.6267 17.9511 29.8851 18.2276 29.2693 18.7805C28.6661 19.3335 28.3204 20.1002 28.2325 21.0805H34.7552ZM40.4696 18.083V24.1722C40.4696 24.6749 40.5764 25.0331 40.7901 25.2468C41.0037 25.4479 41.3745 25.5484 41.9023 25.5484H43.1654V27H41.6196C40.6644 27 39.948 26.7801 39.4704 26.3402C38.9929 25.9003 38.7541 25.1776 38.7541 24.1722V18.083H37.4156V16.6691H38.7541V14.0676H40.4696V16.6691H43.1654V18.083H40.4696ZM46.9218 18.083V24.1722C46.9218 24.6749 47.0287 25.0331 47.2423 25.2468C47.456 25.4479 47.8267 25.5484 48.3546 25.5484H49.6177V27H48.0718C47.1166 27 46.4003 26.7801 45.9227 26.3402C45.4451 25.9003 45.2063 25.1776 45.2063 24.1722V18.083H43.8678V16.6691H45.2063V14.0676H46.9218V16.6691H49.6177V18.083H46.9218ZM52.1675 14.9913C51.8408 14.9913 51.5643 14.8782 51.338 14.652C51.1118 14.4257 50.9987 14.1492 50.9987 13.8225C50.9987 13.4957 51.1118 13.2192 51.338 12.993C51.5643 12.7668 51.8408 12.6537 52.1675 12.6537C52.4817 12.6537 52.7457 12.7668 52.9593 12.993C53.1855 13.2192 53.2986 13.4957 53.2986 13.8225C53.2986 14.1492 53.1855 14.4257 52.9593 14.652C52.7457 14.8782 52.4817 14.9913 52.1675 14.9913ZM52.997 16.6691V27H51.2815V16.6691H52.997ZM60.5396 16.4806C61.7964 16.4806 62.8144 16.8639 63.5936 17.6306C64.3728 18.3847 64.7624 19.4781 64.7624 20.9108V27H63.0657V21.1559C63.0657 20.1253 62.8081 19.3398 62.2928 18.7994C61.7775 18.2464 61.0737 17.9699 60.1814 17.9699C59.2765 17.9699 58.5538 18.2527 58.0134 18.8182C57.4856 19.3838 57.2216 20.207 57.2216 21.2879V27H55.5061V16.6691H57.2216V18.1396C57.561 17.6117 58.0197 17.2033 58.5978 16.9142C59.1885 16.6251 59.8358 16.4806 60.5396 16.4806ZM71.4105 16.4995C72.3029 16.4995 73.0821 16.6943 73.7482 17.0839C74.4268 17.4735 74.9296 17.9636 75.2563 18.5543V16.6691H76.9907V27.2262C76.9907 28.1688 76.7896 29.0046 76.3874 29.7335C75.9853 30.475 75.4071 31.0532 74.6531 31.4679C73.9116 31.8827 73.0444 32.09 72.0515 32.09C70.6942 32.09 69.563 31.7695 68.6581 31.1286C67.7532 30.4876 67.2191 29.6141 67.0557 28.5082H68.7524C68.9409 29.1366 69.3305 29.6393 69.9212 30.0163C70.5119 30.4059 71.222 30.6007 72.0515 30.6007C72.9941 30.6007 73.7607 30.3054 74.3514 29.7147C74.9547 29.124 75.2563 28.2945 75.2563 27.2262V25.0582C74.917 25.6615 74.4143 26.1642 73.7482 26.5664C73.0821 26.9686 72.3029 27.1697 71.4105 27.1697C70.4931 27.1697 69.6573 26.9434 68.9032 26.491C68.1617 26.0385 67.5773 25.4039 67.15 24.5869C66.7227 23.77 66.509 22.84 66.509 21.7969C66.509 20.7411 66.7227 19.8174 67.15 19.0256C67.5773 18.2213 68.1617 17.5992 68.9032 17.1593C69.6573 16.7194 70.4931 16.4995 71.4105 16.4995ZM75.2563 21.8157C75.2563 21.0365 75.0992 20.3578 74.785 19.7797C74.4708 19.2016 74.0435 18.7617 73.5031 18.4601C72.9752 18.1459 72.3908 17.9888 71.7499 17.9888C71.1089 17.9888 70.5245 18.1396 69.9966 18.4412C69.4688 18.7428 69.0477 19.1827 68.7335 19.7608C68.4193 20.339 68.2622 21.0176 68.2622 21.7969C68.2622 22.5886 68.4193 23.2799 68.7335 23.8706C69.0477 24.4487 69.4688 24.8949 69.9966 25.2091C70.5245 25.5107 71.1089 25.6615 71.7499 25.6615C72.3908 25.6615 72.9752 25.5107 73.5031 25.2091C74.0435 24.8949 74.4708 24.4487 74.785 23.8706C75.0992 23.2799 75.2563 22.5949 75.2563 21.8157ZM92.8713 17.706C92.8713 18.7994 92.4942 19.7106 91.7402 20.4395C90.9986 21.1559 89.8612 21.5141 88.328 21.5141H85.8018V27H84.0863V13.8602H88.328C89.811 13.8602 90.9358 14.2184 91.7025 14.9347C92.4817 15.6511 92.8713 16.5749 92.8713 17.706ZM88.328 20.1002C89.2831 20.1002 89.9869 19.8928 90.4394 19.4781C90.8918 19.0633 91.118 18.4726 91.118 17.706C91.118 16.0847 90.188 15.2741 88.328 15.2741H85.8018V20.1002H88.328ZM96.3042 18.3469C96.6059 17.7563 97.0332 17.2975 97.5862 16.9708C98.1517 16.644 98.8367 16.4806 99.641 16.4806V18.2527H99.1886C97.2657 18.2527 96.3042 19.2958 96.3042 21.3821V27H94.5887V16.6691H96.3042V18.3469ZM102.093 14.9913C101.766 14.9913 101.489 14.8782 101.263 14.652C101.037 14.4257 100.924 14.1492 100.924 13.8225C100.924 13.4957 101.037 13.2192 101.263 12.993C101.489 12.7668 101.766 12.6537 102.093 12.6537C102.407 12.6537 102.671 12.7668 102.884 12.993C103.111 13.2192 103.224 13.4957 103.224 13.8225C103.224 14.1492 103.111 14.4257 102.884 14.652C102.671 14.8782 102.407 14.9913 102.093 14.9913ZM102.922 16.6691V27H101.207V16.6691H102.922ZM109.937 27.1697C108.969 27.1697 108.089 26.9497 107.298 26.5098C106.518 26.07 105.903 25.4479 105.45 24.6435C105.01 23.8266 104.79 22.884 104.79 21.8157C104.79 20.76 105.017 19.83 105.469 19.0256C105.934 18.2087 106.562 17.5866 107.354 17.1593C108.146 16.7194 109.032 16.4995 110.012 16.4995C110.993 16.4995 111.879 16.7194 112.67 17.1593C113.462 17.5866 114.084 18.2024 114.537 19.0068C115.002 19.8111 115.234 20.7474 115.234 21.8157C115.234 22.884 114.995 23.8266 114.518 24.6435C114.053 25.4479 113.418 26.07 112.614 26.5098C111.809 26.9497 110.917 27.1697 109.937 27.1697ZM109.937 25.6615C110.553 25.6615 111.131 25.517 111.671 25.2279C112.212 24.9389 112.645 24.5053 112.972 23.9271C113.311 23.349 113.481 22.6452 113.481 21.8157C113.481 20.9862 113.318 20.2824 112.991 19.7043C112.664 19.1262 112.237 18.6989 111.709 18.4224C111.181 18.1333 110.609 17.9888 109.993 17.9888C109.365 17.9888 108.787 18.1333 108.259 18.4224C107.744 18.6989 107.329 19.1262 107.015 19.7043C106.701 20.2824 106.544 20.9862 106.544 21.8157C106.544 22.6578 106.694 23.3679 106.996 23.946C107.31 24.5241 107.725 24.9577 108.24 25.2468C108.755 25.5233 109.321 25.6615 109.937 25.6615ZM118.791 18.3469C119.092 17.7563 119.52 17.2975 120.073 16.9708C120.638 16.644 121.323 16.4806 122.127 16.4806V18.2527H121.675C119.752 18.2527 118.791 19.2958 118.791 21.3821V27H117.075V16.6691H118.791V18.3469ZM124.579 14.9913C124.252 14.9913 123.976 14.8782 123.75 14.652C123.523 14.4257 123.41 14.1492 123.41 13.8225C123.41 13.4957 123.523 13.2192 123.75 12.993C123.976 12.7668 124.252 12.6537 124.579 12.6537C124.893 12.6537 125.157 12.7668 125.371 12.993C125.597 13.2192 125.71 13.4957 125.71 13.8225C125.71 14.1492 125.597 14.4257 125.371 14.652C125.157 14.8782 124.893 14.9913 124.579 14.9913ZM125.409 16.6691V27H123.693V16.6691H125.409ZM130.01 18.083V24.1722C130.01 24.6749 130.117 25.0331 130.331 25.2468C130.544 25.4479 130.915 25.5484 131.443 25.5484H132.706V27H131.16C130.205 27 129.489 26.7801 129.011 26.3402C128.533 25.9003 128.295 25.1776 128.295 24.1722V18.083H126.956V16.6691H128.295V14.0676H130.01V16.6691H132.706V18.083H130.01ZM143.268 16.6691L137.047 31.8638H135.275L137.311 26.8869L133.145 16.6691H135.049L138.291 25.0394L141.496 16.6691H143.268Z" fill="#4CA5CA"/>
</svg>
'''),
                  const SizedBox(width: 19),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}