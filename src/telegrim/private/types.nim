import options

type Bot* = object
  token: string

type User* = object
  id: int32
  is_bot: bool
  first_name: string
  last_name: Option[string]
  username: Option[string]
  language_code: Option[string]
  is_premium: Option[bool]
  added_to_attachment_menu: Option[bool]
  can_join_groups: Option[bool]
  can_read_all_group_messages: Option[bool]
  supports_inline_queries: Option[bool]
  can_connect_to_business: Option[bool]
  has_main_web_app: Option[bool]

type TelegramResponse*[T] = object
  ok*: bool
  result*: T
