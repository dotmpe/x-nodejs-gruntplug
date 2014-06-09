module.exports = 
	#options:
	#	banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */\n'
	#build:
	#	src: 'src/<%= pkg.name %>.js'
	#	dest: 'build/<%= pkg.name %>.min.js'
	#docs:
	#	src: [ 'doc/**/*.rst' ]

	#
	# Configuration to be run (and then tested).
	#
	default_options:
		options: {}
		files:
			'tmp/default_options': [ 'test/fixtures/testing', 'test/fixtures/123']
		args:
			foo: 'bar'

	custom_options:
		options:
			separator: ': '
			punctuation: ' !!!'
		files: 
			'tmp/custom_options': [ 'test/fixtures/testing', 'test/fixtures/123']
		args:
			foo: 'bar'

