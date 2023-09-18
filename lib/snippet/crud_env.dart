class CrudEnv {
  static String baseUrl = "https://capekngoding.com/deny/";
  static String token = "";

  static Map<String, dynamic> get headers {
    return {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    };
  }
}
