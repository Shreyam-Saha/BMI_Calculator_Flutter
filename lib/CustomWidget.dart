import 'package:bmicalculator/UserInterfaceConstants.dart';
import 'package:flutter/material.dart';
import 'UserInterfaceConstants.dart';
import 'result_page.dart';


class TopGenderWidget extends StatelessWidget {
  const TopGenderWidget({@required this.gender, @required this.icon});
  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 88.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kTopGenderWidgetStyle,
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({@required this.color, this.cardChild,this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({this.onPress,this.title});

  final Function onPress;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onPress();},
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            title,
            style: kBottomContainerStyle,
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {
        onPress();
      },
      shape: CircleBorder(),
      fillColor: kInactiveSliderColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
    );
  }
}
