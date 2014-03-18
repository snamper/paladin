from flask import Flask
from paladin.views.home import home

paladin = Flask(__name__)
paladin.register_module(home)
