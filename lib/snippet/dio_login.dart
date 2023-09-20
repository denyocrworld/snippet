var response = await Dio().post(
  "https://capekngoding.com/demo/api/auth/login",
  options: Options(
    headers: {
      "Content-Type": "application/json",
    },
  ),
  data: {
    "email": "user@demo.com",
    "password": "123456",
  },
);
Map obj = response.data;