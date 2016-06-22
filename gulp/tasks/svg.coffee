'use strict'
gulp          = require 'gulp'
browserSync   = require 'browser-sync'
onError       = require './error'
plugins       = require 'gulp-load-plugins'
$             = plugins()
runSequence   = require('run-sequence').use(gulp)
config        = require './config'


#This task outputs to the Jade Includes to place inline
gulp.task 'svg:inline', ->
  gulp.src './src/svg/inline/*.svg'
  .pipe $.plumber(errorHandler: onError)
  .pipe $.svgmin()
  .pipe $.svgstore(
    fileName : 'symbols.svg'
    inlineSvg : true
  )
  .pipe $.cheerio(
    run: (jQuery) ->
      jQuery('[fill]').removeAttr 'fill'
      jQuery('[stroke]').removeAttr 'stroke'
    parserOptions :
      xmlMode : true
  )
  .pipe gulp.dest './src/jade/layouts/includes'

#This task outputs to the dist svg folder to use with cache etc.
gulp.task 'svg:external', ->
  gulp.src './src/svg/external/*.svg'
  .pipe $.plumber(errorHandler: onError)
  .pipe $.svgmin()
  .pipe $.svgstore(
    fileName : 'symbols.svg'
  )
  .pipe $.cheerio(
    run: (jQuery) ->
      jQuery('[fill]').removeAttr 'fill'
      jQuery('[fill-rule]').removeAttr 'fill-rule'
      jQuery('[stroke]').removeAttr 'stroke'
      jQuery('[stroke-width]').removeAttr 'stroke-width'
    parserOptions :
      xmlMode : true
  )
  .pipe gulp.dest config.exportPath + '/svg/'


# Run Both Tasks on a Single Call :)
gulp.task 'svg', ->
  runSequence 'svg:inline',
    'svg:external'
