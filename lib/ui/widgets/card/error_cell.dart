import 'package:dio/dio.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/widgets/row/card_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/utils/dimens.dart';

class ErrorCell extends StatelessWidget {
  DioError error;
  Function retryFunction;

  ErrorCell(this.error, this.retryFunction);

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: EdgeInsets.all(Dimens.SIZE_16),
          child: CardCell.body(
            context,
            child: RowContainer(
              children: [
                Center(
                    child:
                        Text(_handleError(error), textAlign: TextAlign.center)),
                const SizedBox(height: Dimens.SIZE_20),
                if (error.type == DioErrorType.other)
                  Text("Please make sure your internet connection")
                else
                  const SizedBox(),
                ElevatedButton(
                    onPressed: () {
                      retryFunction();
                    },
                    child: Text("Retry"))
              ],
            ),
          ),
        ),
      );

  String _handleError(DioError error) {
    String errorDescription = "";
    switch (error.type) {
      case DioErrorType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case DioErrorType.other:
        errorDescription =
            "Connection to API server failed due to internet connection";
        break;
      case DioErrorType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        errorDescription =
            "Received invalid status code: ${error.response?.statusCode}";
        break;
      case DioErrorType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
    }
    return errorDescription;
  }
}
