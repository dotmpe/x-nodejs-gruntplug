/*
 * x-nodejs-grutplugin-mpe
 * 
 *
 * Copyright (c) 2014 
 * Licensed under the GPLv3 license.
 */

'use strict';

require('coffee-script/register');

module.exports = function (grunt) {
	// auto load grunt contrib tasks using ./package.json
	require('load-grunt-tasks')(grunt);
	// auto load config parts in ./grunt/
	require('load-grunt-config')(grunt);
	// Actually load custom plugin's task(s) from ./tasks
	grunt.loadTasks('tasks');
};
