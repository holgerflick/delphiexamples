object ServiceController: TServiceController
  OldCreateOrder = False
  Height = 316
  Width = 266
  object Client: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://delphi-books.com/api'
    Params = <>
    Left = 72
    Top = 48
  end
  object reqAllBooks: TRESTRequest
    Client = Client
    Params = <>
    Resource = 'b/all.json'
    Response = respAllBooks
    Left = 72
    Top = 120
  end
  object respAllBooks: TRESTResponse
    ContentType = 'application/json'
    Left = 72
    Top = 192
  end
end
