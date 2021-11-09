
import 'package:reprem_task/models/ShareCardModel.dart';
import 'package:reprem_task/utils/Constants.dart';

class CardMainController{

  List<ShareCardModel> optList = [];

  generateShareOptions(){
    optList.add(ShareCardModel(Constants.qrImage, Constants.qrName, Constants.qrDesc));
    optList.add(ShareCardModel(Constants.nearbyImage, Constants.nearbyName, Constants.nearbyDesc));
    optList.add(ShareCardModel(Constants.txtImage, Constants.txtName, Constants.txtDesc));
    optList.add(ShareCardModel(Constants.emailImage, Constants.emailName, Constants.emailDesc));
    optList.add(ShareCardModel(Constants.moreImage, Constants.moreName, Constants.moreDesc));

    return optList;
  }
}