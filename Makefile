THRIFT=thrift

help:
	@echo 'Makefile for paladin                     '
	@echo '                                         '
	@echo 'Usage:                                   '
	@echo '    make build      build thrift files   '
	@echo '    make develop    make a develop env   '
	@echo '    make install    install as a package '
	@echo '    make uninstall  uninstall paladin    '

clean:
	rm -rf paladin/sdk/*

requirements:
	pip install -r requirements.txt

build: clean
	$(THRIFT) -out paladin/sdk --gen py:new_style,utf8strings paladin/thrift_files/eus.thrift
	$(THRIFT) -out paladin/sdk --gen py:new_style,utf8strings paladin/thrift_files/ers.thrift
	$(THRIFT) -out paladin/sdk --gen py:new_style,utf8strings paladin/thrift_files/eos.thrift
	$(THRIFT) -out paladin/sdk --gen py:new_style,utf8strings paladin/thrift_files/oas.thrift
	@echo
	@echo "Build finished."

develop: requirements build
	python setup.py develop
	@echo
	@echo "Install finished"

install: requirements build
	python setup.py install --record install.record
	@echo
	@echo "Install finished"

uninstall:
	cat install.record | xrags rm -rf
	@echo
	@echo "Uninstall finished"
