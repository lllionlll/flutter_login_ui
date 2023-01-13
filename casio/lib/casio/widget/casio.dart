import 'package:casio/casio/bloc/casio_bloc.dart';
import 'package:flutter/material.dart';
class Casio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final casioBloc = CasioBloc();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 375,
              height: 667,
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.25,
                    width: size.width,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 48),
                    ),
                  ),
                  Container(
                    height: 450,
                    padding: EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            itemCasio('AC', casioBloc),
                            itemCasio('-', casioBloc),
                            itemCasio('%', casioBloc),
                            itemCasio('/', casioBloc),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            itemCasio('7', casioBloc),
                            itemCasio('8', casioBloc),
                            itemCasio('9', casioBloc),
                            itemCasio('*', casioBloc),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            itemCasio('4', casioBloc),
                            itemCasio('5', casioBloc),
                            itemCasio('6', casioBloc),
                            itemCasio('-', casioBloc),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            itemCasio('1', casioBloc),
                            itemCasio('2', casioBloc),
                            itemCasio('3', casioBloc),
                            itemCasio('+', casioBloc),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            itemCasio('0', casioBloc),
                            itemCasio(',', casioBloc),
                            itemCasio('.', casioBloc),
                            itemCasio('=', casioBloc),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }

  InkWell itemCasio(String txt, CasioBloc casioBloc) {
    return InkWell(
      onTap: () {
        txt += '0';
        casioBloc.add(CasioEnterValueEvent());
      },
      borderRadius: BorderRadius.circular(100),
      splashColor: Colors.transparent,
      highlightColor: Colors.grey.withOpacity(0.3),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: <Color>[
                Color(0xFFEBEDF0),
                Color(0xFFF2F4F6),
              ],
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  offset: Offset(-3, -3),
                  blurRadius: 5
              ),
              BoxShadow(
                color: Color.fromRGBO(117, 127, 138, 0.3),
                offset: Offset(5, 5),
                blurRadius: 10,
              )
            ]
        ),
        child: Container(
          width: 70,
          height: 70,
          alignment: Alignment.center,
          child: Text(
            txt,
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

