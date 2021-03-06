from setuptools import setup

setup(
    name='SpreadFlowDoc',
    version='0.0.1',
    description='Documentation for SpreadFlow metadata extraction and processing engine',
    author='Lorenz Schori',
    author_email='lo@znerol.ch',
    url='https://github.com/znerol/spreadflow-doc',
    packages=[],
    install_requires=[
        'Sphinx',
        'SpreadFlowCore',
        'SpreadFlowDelta',
        'SpreadFlowExiftool',
        'SpreadFlowJsonLD',
        'SpreadFlowMongoDB',
        'SpreadFlowObserverFS',
        'SpreadFlowPDF',
        'SpreadFlowThumbor',
        'SpreadFlowXslt',
        'sphinx_rtd_theme'
    ],
    zip_safe=False,
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Framework :: Twisted',
        'Intended Audience :: Developers',
        'Intended Audience :: Information Technology',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python :: 2.7',
        'Topic :: Multimedia'
    ]
)
