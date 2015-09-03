#!/bin/bash

# This script updates the sub projects that depend on the main requirejs
# project. It is assumed the sub projects are siblings to this project
# the the names specified below.

RJS=../r.js
if test -d $RJS ; then
    echo "Updating r.js"
    cp require.js $RJS/require.js
    cd $RJS
    node dist.js
    cd ../requirejs
fi

# r.js optimizer
if test -d ../requirejs-optimizer ; then
    echo "Updating requirejs-optimizer R.JS"
    RJS=../requirejs-optimizer
    cp require.js $RJS/require.js
    cd $RJS
    node dist.js
    cd ../requirejs
fi

# The RequireJS+jQuery sample project.
if test -d ../require-jquery ; then
    echo "Updating jQuery sample project"
    cp require.js ../require-jquery/parts/require.js
    cp $RJS/r.js ../require-jquery/jquery-require-sample/r.js
    cd ../require-jquery/parts
    ./update.sh
    cd ../../requirejs
fi

# The sample projects

if test -d ../example-jquery-cdn ; then
    echo "Updating requirejs/example-jquery-cdn"
    cp require.js ../example-jquery-cdn/www/js/lib/require.js
    cp $RJS/r.js ../example-jquery-cdn/tools/r.js
fi

if test -d ../example-jquery-shim ; then
    echo "Updating requirejs/example-jquery-shim"
    cp require.js ../example-jquery-shim/www/js/lib/require.js
    cp $RJS/r.js ../example-jquery-shim/tools/r.js
fi

if test -d ../example-multipage ; then
    echo "Updating requirejs/example-multipage"
    cp require.js ../example-multipage/www/js/lib/require.js
    cp $RJS/r.js ../example-multipage/tools/r.js
fi

if test -d ../example-multipage-shim ; then
    echo "Updating requirejs/example-multipage-shim"
    cp require.js ../example-multipage-shim/www/js/lib/require.js
    cp $RJS/r.js ../example-multipage-shim/tools/r.js
fi

if test -d ../example-libglobal ; then
    echo "Updating requirejs/example-libglobal"
    cp require.js ../example-libglobal/lib/require.js
    cp $RJS/r.js ../example-libglobal/tools/r.js
fi

if test -d ../../volojs/create-template ; then
    echo "Updating volojs/create-template"
    cp require.js ../../volojs/create-template/www/lib/require.js
    cp $RJS/r.js ../../volojs/create-template/tools/r.js
fi

if test -d ../../volojs/create-responsive-template ; then
    echo "Updating volojs/create-responsive-template"
    cp require.js ../../volojs/create-responsive-template/www/js/lib/require.js
    cp $RJS/r.js ../../volojs/create-responsive-template/tools/r.js
fi

echo "Updating amodrojs/amodro-trace"
cp require.js ../../amodrojs/amodro-trace/lib/loader/require.js

# The cajon project
if test -d ../cajon/tools ; then
    echo "Updating the cajon project"
    cp require.js ../cajon/tools/require.js
    cp $RJS/r.js ../cajon/tools/r.js
    cd ../cajon/tools
    ./build-cajon.js
    cd ../../requirejs
fi

# The require-cs project
if test -d ../require-cs ; then
    echo "Updating the require-cs CoffeeScript plugin"
    cp require.js ../require-cs/demo/lib/require.js
    cp $RJS/r.js ../require-cs/tools/r.js
fi

if test -d ../requirejs-coffeescript ; then
    echo "Updating the require-cs CoffeeScript plugin"
    cp require.js ../requirejs-coffeescript/demo/lib/require.js
    cp $RJS/r.js ../requirejs-coffeescript/tools/r.js
fi

# The npm container stuff
if test -d ../requirejs-npm/requirejs ; then
    echo "Updating requirejs-npm"
    cp require.js ../requirejs-npm/requirejs/require.js
    cp $RJS/r.js ../requirejs-npm/requirejs/bin/r.js
fi

# The handlebars plugin
if test -d ../require-handlebars/requirejs ; then
    echo "Updating require-handlebars"
    #cp require.js ../require-handlebars/libs/require.js
    cp $RJS/r.js ../require-handlebars/libs/r.js
fi

# The bower container stuff
if test -d ../requirejs-bower ; then
    echo "Updating requirejs-bower"
    cp require.js ../requirejs-bower/require.js
fi
