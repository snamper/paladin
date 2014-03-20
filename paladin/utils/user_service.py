# -*- coding: utf-8 -*-

from .fake import FakeClient

class Client(FakeClient):

    def get(self, user_id):
        return 'hello world / user'
