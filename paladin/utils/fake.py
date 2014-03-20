# -*- coding: utf-8 -*-


class FakeClient():

    def __enter__(self):
        return self

    def __exit__(self, type, value, traceback):
        pass
