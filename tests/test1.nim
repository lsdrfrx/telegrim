# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import telegrim
import strformat
import json

var token = "7503074714:AAGdvEFj51_fg-tbVB_RkOdNCkpwqSKWK20"

test "can connect to telegram API":
  let url: string = "https://api.telegram.org/bot" & token & "/getMe"
  check makeRequest[User](url=url).ok == true
