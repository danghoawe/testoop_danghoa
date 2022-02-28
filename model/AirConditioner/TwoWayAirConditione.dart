import 'package:testoop_danghoa/Calculate.dart';
import 'package:testoop_danghoa/EnterData.dart';

import 'AirConditioner.dart';

class TwoWayAirConditioner extends AirConditioner {
  bool deodorizationTechnology, sterilizationTechnology;

  TwoWayAirConditioner(String ID, String nameProduct, num price,
      String whereProduction, bool hasInverter,this.deodorizationTechnology,this.sterilizationTechnology)
      : super(ID, nameProduct, price, whereProduction, hasInverter);

  TwoWayAirConditioner.noParameter(this.sterilizationTechnology, this.deodorizationTechnology)
      : super('', '', 0, '', false);

  @override
  String toStringValue() {
    String content =
        "\tMáy Lạnh : <$ID> <loại máy lạnh : 1 chiều>  " + super.toStringValue();
    if (hasInverter) {
      content += "\n\tInverter: <Có>";
    } else {
      content += "\n\tInverter: <Không>";
    }
    if (sterilizationTechnology) {
      content += "\tKhử khuẩn: <Có>";
    } else {
      content += "\tKhử khuẩn: <Không>";
    }
    if (deodorizationTechnology) {
      content += "\tKhử mùi: <Có>";
    } else {
      content += "\tKhử mùi: <Không>";
    }
    return content;
  }

  @override
  void enterData() {
    super.enterData();
    switch (enterString("\t\t\t\t\t\tInverter : 1.Có\t2.Không :")) {
      case "1":
        hasInverter = true;
        break;
      case "2":
        hasInverter = false;
        break;
    }

    switch (enterString("\t\t\t\t\t\tKhử mùi : 1.Có\t2.Không :")) {
      case "1":
        deodorizationTechnology = true;
        break;
      case "2":
        deodorizationTechnology = false;
        break;
    }

    switch (enterString("\t\t\t\t\t\tKhử khuẩn : 1.Có\t2.Không :")) {
      case "1":
        sterilizationTechnology = true;
        break;
      case "2":
        sterilizationTechnology = false;
        break;
    }
    price = getTwoWayAirConditionerPrice(hasInverter, sterilizationTechnology, sterilizationTechnology);
  }
}
