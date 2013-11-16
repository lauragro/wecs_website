@ECHO OFF

:START
SET /P WATCH_FOR_CHANGES=Watch for changes? (y/n)

IF %WATCH_FOR_CHANGES%==y (
	START jade --watch uncompiled\jade -o public
	START sass --watch uncompiled\sass:public\stylesheets
	START coffee -o public\javascripts -bcw uncompiled\coffeescripts
) ELSE IF %WATCH_FOR_CHANGES%==n (
	jade uncompiled\jade -o public
	sass -f uncompiled\sass\* public\stylesheets
	coffee -o public\javascripts -bc uncompiled\coffeescripts
) ELSE GOTO START

coffee server/server.coffee