###
x-nodejs-docutils

Gruntplugin to work with docutils on NodeJS

Copyright (c) 2014 
Licensed under the GPLv3 license.

###

"use strict"

module.exports = (grunt) ->

	grunt.registerMultiTask "x_nodejs_docutils", ".", ->

		if @target is 'build'
			console.log 'Building'

		@files.forEach (file) ->
			
