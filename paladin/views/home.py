# -*- coding:utf-8 -*-

from flask import Module

home = Module(__name__)


@home.route('/')
def index():
    return 'hello world'
