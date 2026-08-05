import 'package:flutter/material.dart';

import '../main.dart';

import '../logic/calculation.dart';
import '../logic/input.dart';

class Result {
  static calculation_box() {
    return Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        alignment: Alignment.centerRight,
        width: double.infinity,
        height: 32,
        //color: Colors.amber,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerRight,
            child: Align(
                child: ValueListenableBuilder<String>(
                    valueListenable: Input.calculation_list_str,
                    builder: (context, value, child) {
                        return Text(
                          value.replaceAll(RegExp(r'[\[\], ]'), ''),
                          textAlign: TextAlign.right,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.grey,
                          )
                        );
                    }
                  )
            )
        )
    );
  }

  static result_box() {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.centerRight,
        width: double.infinity,
        height: 72,
        //color: Colors.amber,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerRight,
            child: Align(
                child: ValueListenableBuilder<String>(
                    valueListenable: Calculation.result_str,
                    builder: (context, value, child) {
                        return Text(
                          value,
                          textAlign: TextAlign.right,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 64,
                              color: Colors.white,
                          )
                      );
                    }
                  )
            )
        )
    );
  }
}