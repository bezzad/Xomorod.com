"use strict";

/**/
/* on scroll */
/**/
$(window).scroll(function()
{
	if( $(window).scrollTop() > $('.page-header-top').outerHeight() )
	{
		$('.page-header-middle').addClass('fixed');
	}
	else
	{
		$('.page-header-middle').removeClass('fixed');	
	}
		
	
	if( $(window).scrollTop() > $('.page-header').outerHeight() )
	{
		$('#scroll-top').addClass('visible');
	}
	else
	{
		$('#scroll-top').removeClass('visible');		
	}
});


/**/
/* on document load */
/**/
$(function()
{
	/**/
	/* main nav */
	/**/
	$('#main-nav .carousel').owlCarousel(
	{
		items: 2,
		itemsDesktop: [1229,2],
		itemsDesktopSmall: [979,2]
	});
	
	$('#main-nav').on('click', 'a', function()
	{
		if( $(this).next().hasClass('dropdown') && $(window).width() < 768 )
		{
			$(this).next().slideToggle('fast');
			return false;
		}		
	});
	
	$('#main-nav').on('click', '.switcher', function()
	{
		$(this).next().slideToggle();
		
		return false;
	});
	
	$('#main-nav').on('click', '.latest p a', function()
	{
		if($(this).hasClass('next'))
		{
			$(this).parent().next().trigger('owl.next');
		}
		if($(this).hasClass('prev'))
		{
			$(this).parent().next().trigger('owl.prev');
		}
		
		return false;
	});
	
	
	/**/
	/* popular news */
	/**/
	$('#popular-news').on('click', '.tabs a', function()
	{
		$(this).addClass('active').siblings().removeClass('active');
		$($(this).attr('href')).addClass('items-visible').siblings().removeClass('items-visible');
		return false;
	});
	
	
	/**/
	/* featured news */
	/**/
	$('#featured-news').owlCarousel(
	{
		singleItem: true,
		navigation: true,
		navigationText: ['<i class="fa fa-caret-left">', '<i class="fa fa-caret-right">']
	});
	
	
	/**/
	/* recent news */
	/**/
	$('#recent-news').on('click', '.tabs a', function()
	{
		if( !$(this).hasClass('all') )
		{
			$(this).addClass('active').siblings().removeClass('active');
			$($(this).attr('href')).addClass('items-visible').siblings().removeClass('items-visible');
			return false;
		}
	});
	
	
	/**/
	/* video player */
	/**/
	$('#video-player').on('click', '.playlist a', function()
	{
		$(this).addClass('active').siblings().removeClass('active');
		$('#video-player iframe').attr('src', $(this).attr('href'));
		return false;
	});
	
	
	/**/
	/* gallery */
	/**/
	$('#gallery .thumbs').owlCarousel({
		items: 4,
		itemsDesktop: [1229,4],
		itemsDesktopSmall:	[979,4],
		itemsTablet: [767,4],
		itemsMobile: [479,3],
		navigation: true,
		navigationText: ['<i class="fa fa-chevron-left">', '<i class="fa fa-chevron-right">']
	});
	$('#gallery').on('click', '.thumbs .item', function()
	{
		$('#gallery .pics img').eq($(this).parent().index()).addClass('active').siblings().removeClass('active');
	});
	
	
	/**/
	/* widgets switcher */
	/**/
	$('#widgets-switcher').on('click', function()
	{
		if( $(this).parent().hasClass('hidden') )
		{
			$(this).removeClass('fa-flip-horizontal');
			$(this).parent().prev().removeClass('grid-col-11').addClass('grid-col-8');			
			$(this).parent().removeClass('hidden').removeClass('grid-col-1').addClass('grid-col-4');
		}
		else
		{
			$(this).addClass('fa-flip-horizontal');
			$(this).parent().prev().removeClass('grid-col-8').addClass('grid-col-11');
			$(this).parent().addClass('hidden').removeClass('grid-col-4').addClass('grid-col-1');
		}
		return false;
	});
	
	
	/**/
	/* widget popular */
	/**/
	$('#widget-popular').on('click', '.head a', function()
	{
		$(this).addClass('active').siblings().removeClass('active');
		$($(this).attr('href')).addClass('active').siblings().removeClass('active');
		return false;
	});
	
	
	/**/
	/* feedback */
	/**/
	$('#feedback').validate({
		errorElement: 'em',
		submitHandler: function(form)
		{
			$(form).ajaxSubmit(
			{
				beforeSend: function()
				{
					$(form).find('input[type="submit"]').attr('disabled', true);
				},
				success: function()
				{
					$(form).addClass('submitted');
				}
			});
		}
	});
	
	
	/**/
	/* scroll top */
	/**/
	$('#scroll-top').on('click', function()
	{
		$('html, body').animate({scrollTop: 0});
	});
});