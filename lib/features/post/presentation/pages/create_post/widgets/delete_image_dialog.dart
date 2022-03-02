import 'package:flutter/material.dart';

import '../../../../../../global/styles.dart';
import '../../../../../../global/ui_helpers.dart';

class DeleteImageDialog extends StatelessWidget {
  const DeleteImageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 80, horizontal: 50),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(customBorderRadius)
      ),
      child: Column(
        children: [
          Expanded(
              child: Center(child: Text('Delete this photo?', style: AppTextStyle.large.copyWith(color: Colors.white),))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: OutlinedButton(
                  style: TextButton.styleFrom(
                      side: BorderSide(
                          color: Colors.white,
                          width: 1
                      ),
                      primary: Colors.white
                  ),
                  onPressed: () { },
                  child: Text('Cancel'),
                ),
              ),
              AppHorizontalSpace.small,
              Expanded(
                flex: 1,
                child: TextButton(
                  style: TextButton.styleFrom(
                      textStyle: AppTextStyle.medium.copyWith(fontWeight: AppFontWeight.rubikSemiBold),
                      primary: AppColors.error, //
                      backgroundColor: Colors.white// foreground
                  ),
                  onPressed: () { },
                  child: Text('Delete'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
