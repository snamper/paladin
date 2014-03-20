# -*- coding: utf-8 -*-

from .fake import FakeClient

from paladin.sdk.user.ttypes import TUserStruct


class Client(FakeClient):

    def get(self, user_id):
        return TUserStruct(
            id=1,
            eleme_user_id=481769,
            name='fantengyuan',
            mobile='15216709049'
        )
