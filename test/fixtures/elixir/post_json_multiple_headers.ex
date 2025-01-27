request = %HTTPoison.Request{
  method: :post,
  url: "https://localhost:28139/rest/login-sessions",
  options: [hackney: [:insecure]],
  headers: [
    {~s|Content-Type|, ~s|application/json|},
    {~s|X-API-Version|, ~s|200|},
  ],
  params: [],
  body: ~s|{"userName":"username123","password":"password123", "authLoginDomain":"local"}|
}

response = HTTPoison.request(request)
