###
Helper for grunt x_nodejs_docutils task.

- Uses rst2<target-format> aliases for standalone builds.
- TODO use doc2site or htdocs to build from .site 
###

path = require 'path'
fs = require 'node-fs'

class TasksHelper

	constructor: (@grunt)->

	build_standalone: (opts, filerule, done)->

		if filerule.dest
			if typeof filerule.orig.ext != 'undefined'
				ext = filerule.orig.ext
			else
				ext = path.extname filerule.dest
			opts.target_format = ext.slice(1)
		opts.source_format = path.extname(filerule.src[0]).slice(1)

		console.log "Building #{filerule.dest} from #{filerule.src[0]} with #{opts.target_format} "

		# ensure build dir exists
		fs.mkdirSync path.dirname(filerule.dest), 0o755, true

		# Defer to docutils standalone build scripts
		@grunt.util.spawn(
			cmd: "#{opts.source_format}2#{opts.target_format}.py"
			args: [ filerule.src[0], filerule.dest ]
			( error, result, code )->
				if error then console.log error
				done()
		)

	build_site: (opts, filerule, done)->

	
module.exports = TasksHelper

