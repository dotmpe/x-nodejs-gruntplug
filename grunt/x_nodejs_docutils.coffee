### Grunt x_nodejs_docutils config ###
module.exports =  (grunt)->
	options:
		standalone: true
		#banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
		
	# Method 1: explicit src, but need to watch more files that to build
	example_1:
		options:
			target_format: 'xhtml'
		src: [ 'doc/main.rst', 'doc/foo/main.rst', 'doc/foo/bar/main.rst' ]
		#main: 'doc/main.rst'

	# Method 2: using multi-task files attribute and expand
	example_2:
		files: [
			expand: true
			cwd: 'doc/'
			src: '**/*.rst'
			dest: 'build/'
			ext: '.xhtml'
			filter: (fn)->
				return true
		]

