#
# * x-nodejs-grutplugin-mpe
# * 
# *
# * Copyright (c) 2014 
# * Licensed under the GPLv3 license.
# 
"use strict"
module.exports = (grunt) ->

	# Please see the Grunt documentation for more information regarding task
	# creation: http://gruntjs.com/creating-tasks
	grunt.registerMultiTask "x_nodejs_gruntplugin_mpe", "The best Grunt plugin ever.", ->

		# Merge task-specific and/or target-specific options with these defaults.
		options = @options(
			punctuation: "."
			separator: ", "
		)

		# Iterate over all specified file groups.
		@files.forEach (file) ->

			# Concat specified files.

			# Warn on and remove invalid source files (if nonull was set).

			# Read file source.
			src = file.src.filter((filepath) ->
				unless grunt.file.exists(filepath)
					grunt.log.warn "Source file \"" + filepath + "\" not found."
					false
				else
					true
			).map((filepath) ->
				grunt.file.read filepath
			).join(grunt.util.normalizelf(options.separator))

			# Handle options.
			src += options.punctuation

			# Write the destination file.
			grunt.file.write file.dest, src

			# Print a success message. XXX: testing
			grunt.log.writeln "File \"" + file.dest + "\" created."
			return

		return

	return
