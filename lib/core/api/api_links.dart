class ApiGetUrl {}

class ApiPostUrl {
  static const String login = "users";
  static const String getCancelationReasons = "functions/getCancelationReasons";
  static const String cancelOrderByClient = "functions/cancelOrderByClient";
  static const String signOut = "logout";
  static const String sendCode = "functions/generateOTP";
  static const String updateUserLang = "functions/updateUserLang";
  static const String getAboutUs = "functions/getAboutUs";
  static const String getPrivacyPolice = "functions/getPrivacyPolicy";

  static const String getAppConfig = "functions/getAppConfig";

  static const String restaurant = "functions/getRestaurants";
  static const String restaurantMen = "functions/getRestaurantMenu";

  static const String addEditAddress =
      "functions/addEditAddress_client_by_client";

  static const String getAddress = "functions/getClientAddresses";

  static const String setFcmToken = "functions/updateFcmToken";

  static const String deleteProfile = "functions/deleteAccount";

  static const String newestItems = "functions/getItems";
  static const String searchRestaurantAndItems =
      "functions/searchRestaurantAndItems";
  static const String placeRestaurantOrder = "functions/placeRestaurantOrder";
  static const String getOrdersByClient = "functions/getMyOrders_mobile";
  static const String calculateInvoiceCalculations =
      "functions/calculateInvoiceCalculations";
  static const String getNotification = "functions/getNotifications";
  static const String getActiveOrders = "functions/getActiveOrders";
  static const String getFoodifyBanners = "functions/getFoodifyBanners";
  static const String updateClientInfo = "functions/updateClientInfo";
  static const String checkCoupon = "functions/checkCoupon";
  static const String getMyProfile = "functions/getMyProfile";
  static const String getResOrderDeliveryLocation = "functions/getResOrderDeliveryLocation";

  static const String getDeliverymanInfoByOrder = "functions/getDeliverymanInfoByOrder";
}

class ApiDeleteUrl {}

class ApiPutUrl {}
