'use-strict'
$(document).ready ->
	# DISABLE ANCHORS
	$('.disable-anchors a').click (e)->
		e.preventDefault()
		return

	$('[data-href]').click((e)->
		locationArr = window.location.pathname.split('/')
		lastPath = locationArr[locationArr.length - 1]
		mainPath = locationArr[locationArr.length - 2]
		pathObj = {}
		pathObj[mainPath] = lastPath
		window.history.pushState(pathObj, '', lastPath)
		document.location.replace($(this).data('href'))
		return
		)

	$gallery = $('.gallery')
	$gallery.flickity({
		cellAlign: true
		contain: true
		pageDots: false
		})
	# flkty = Flickity.data( $('.gallery')[0] )
	# # console.log flkty
	# $gallery.on( 'cellSelect', ()-> 
	#   console.log( 'Flickity select ' + flkty.selectedIndex )
	#   if flkty.selectedIndex is 3
	#   	$.magnificPopup.open({
	#   		items: 
	#   			src: 'subscribe-form.html'
	#   			type: 'ajax'
	#   		})
	#   	angular.module('mailchimp').controller('MailchimpSubscriptionCtrl', ['$scope', ($scope)->
	#   		$scope.$watch()
	#   		return
	#   		])
	#   return
	# 	)
	
	# TRANSFORM ICONS INITIALIZE
	# transformicons.add('.tcon')

	# FLICKITY
	# $('#collection-gallery').flickity({
	# 	contain: true
	# 	cellAlign: 'left'
	# 	# wrapAround: true
	# 	})

	return # END ON READY