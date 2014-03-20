# -*- coding: utf-8 -*-

from .fake import FakeClient


class Client(FakeClient):

    def get(self, site_id):
        return 'hello world / site'
