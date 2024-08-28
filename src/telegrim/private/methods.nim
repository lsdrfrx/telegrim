import yahttp
import types
import json


proc makeRequest*[T](url: string): TelegramResponse[T] =
  let response: Response = get(url=url)
  if response.status == 200:
    return response.body.parseJson().to(TelegramResponse[T])
  
proc makeRequest*(url: string, body: JsonNode): TelegramResponse =
  post(url=url, body=body.getStr())
