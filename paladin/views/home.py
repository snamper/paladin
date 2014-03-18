# -*- coding:utf-8 -*-

from flask import Module
home = Module(__name__)


@home.route('/')
@home.route('/index')
def index():
    return 'hello world'
