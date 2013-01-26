######################################################################
# Automatically generated by qmake (2.01a) Fri Jan 25 17:40:10 2013
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += .
INCLUDEPATH += .

# Input
HEADERS += archiveloader.h parser.h yyheader.h
SOURCES += archiveloader.cpp main.cpp parser.cpp

FLEXSOURCES += db.l
BISONSOURCES += db.y

# Flex settings
flex.commands = flex ${QMAKE_FILE_IN}
flex.input = FLEXSOURCES
flex.output = lex.yy.c
flex.depends = db.tab.h
flex.name = flex
QMAKE_EXTRA_COMPILERS += flex
 
# Bison settings
bison.commands = bison -d -t -v ${QMAKE_FILE_IN} && mv db.tab.c db.tab.cpp
bison.input = BISONSOURCES
bison.output = db.tab.cpp
bison.clean = db.tab.cpp db.tab.h db.output
bison.variable_out = SOURCES
bison.name = bison
QMAKE_EXTRA_COMPILERS += bison

bisonheader.commands = @true
bisonheader.input = BISONSOURCES
bisonheader.output = db.tab.h
bisonheader.variable_out = HEADERS
bisonheader.name = bison header
bisonheader.depends = db.tab.cpp
QMAKE_EXTRA_COMPILERS += bisonheader