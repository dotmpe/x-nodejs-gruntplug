### Grunt x_nodejs_gruntplugin_mpe config ###
module.exports = 

	#
	# Configurations to be run (and then tested).
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

