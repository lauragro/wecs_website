# Wecs

### Frameworks
<a href="http://sass-lang.com/">Sass</a> -> CSS

<a href="http://jade-lang.com/">Jade</a> -> HTML

<a href="Javascript (http://coffeescript.org/">Coffeescript</a> -> Javascript

### Working with the code
It is easy when you are deving on localhost. Just run:

```
./go.sh
```

This will start a node.js server - you shouldn't need to touch the server code, its only purpose is to serve up the static files (css, html, js). It is set up to watch the files you are working on - this means that as soon as you modify one of the files (jade/sass/coffee), it will automatically recompile it. Just go over to your browser and refresh...no need to restart the server or do anything fancy.

Make changes to the files in /uncompiled. Put images in /public/images, **but do not touch any other files in /public**

If you keep changing the code, but are not seeing the changes reflected in your browser - check your terminal. There is probably an error in your sass/jade/coffee code, preventing it from being compiled

### Deploying

Everything automatically gets compiled into the /public directory. Just copy this to your server.