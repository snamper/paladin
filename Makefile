THRIFT=thrift

help:
	@echo 'Makefile for paladin                     '
	@echo '                                         '
	@echo 'Usage:                                   '
	@echo '    make develop    make a develop env   '
	@echo '    make install    install as a package '
	@echo '    make uninstall  uninstall paladin    '

requirements:
	pip install -r requirements.txt

develop: requirements
	python setup.py develop
	@echo
	@echo "Install finished"

install: requirements
	python setup.py install --record install.record
	@echo
	@echo "Install finished"

uninstall:
	cat install.record | xrags rm -rf
	@echo
	@echo "Uninstall finished"
