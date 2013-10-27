jade --watch uncompiled/jade -o public &
sass --watch uncompiled/sass:public/stylesheets &
coffee -o public/javascripts -bcw uncompiled/coffeescripts/*.coffee &

coffee server/server.coffee