# -*- coding:utf-8 -*-

from flask import Module
home = Module(__name__)

from paladin.utils import user_client


@home.route('/')
def index():
    with user_client() as c:
        try:
            return c.get(50)
        except Exception as e:
            return repr(e)
