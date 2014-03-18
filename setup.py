import os

from setuptools import setup, find_packages


requires = [
]

setup(
    name='earthshaker',
    version='0.1',
    description='paladin is eleme tpd platform',
    long_description=open(os.path.join('README.md')).read(),
    author='stdrickforce',
    author_email='tengyuan.fan@ele.me',
    packages=find_packages(),
    url='https://github.com/stdrickforce/paladin',
    include_package_data=True,
    zip_safe=False,
    install_requires=requires,
)
