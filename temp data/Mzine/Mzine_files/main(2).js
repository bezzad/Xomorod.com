/**/
/* on load event */
/**/
$(function()
{
	$('body').append('<style>');
	
	
	$('#tuner-switcher').on('click', function()
	{
		$('#tuner').toggleClass('tuner-visible');
	});
	
	
	$('#tuner').on('click', '.styles li', function()
	{
		$(this).addClass('active').siblings().removeClass('active');
		if( $(this).data('layout') == 'boxed' )
			$('.page').addClass('page-light');
		else
			$('.page').removeClass('page-light');
	});
	
	
	$('#tuner').on('click', '.colors li', function()
	{
		$('#tuner .colors li').removeClass('active');
		$(this).addClass('active');
		$('#tuner-style span').text($(this).data('hex'));
		$('style').text($('#tuner-style').text());
	});
	
	
	$('#tuner').on('click', '.layouts li', function()
	{
		$(this).addClass('active').siblings().removeClass('active');
		if( $(this).data('layout') == 'boxed' )
			$('.page').addClass('page-boxed');
		else
			$('.page').removeClass('page-boxed');
	});
	
	
	$('#tuner').on('click', '.patterns li', function()
	{
		$(this).addClass('active').siblings().removeClass('active');
		$('body').css('background-image', $(this).data('url'));
	});
});