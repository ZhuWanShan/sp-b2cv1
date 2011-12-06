<div class="Mail_subscription">
	<script src="http://cdn.gigya.com/JS/socialize.js?apiKey=2_1UXpzvtcCUTsgsqVzgFllQgReHnrU1ZScSL7tJAC1ftCy_DMCPUi2iTExpYFaddy"></script>	
	<h2 style="text-align:left;">Follow Us:</h2>
	<script>
		var params1 = {
			containerID: 'bar1',
			iconSize:45,
			buttons:[
				{
					provider: 'facebook',
					actionURL: 'http://www.facebook.com/HoneyBuy',
					action: 'dialog',
					title: 'FaceBook'
				},
				{
					provider: 'twitter',
					followUsers: 'honeybuy', 
					action: 'dialog',
					title: 'Twitter'
				},
				{
					provider: 'googleplus',
					actionURL: 'https://plus.google.com/111058949532759647909/posts', 
					action: 'dialog',
					title: 'Google+'
				},
				{
					provider: 'email',
					actionURL: 'http://localhost:8888/c/costumes',
					confirmationText:'Thank you for following us',
					action: 'dialog',
					title: 'Email'
				},
				{	
					provider: 'rss',
					actionURL: 'http://honeybuy.wordpress.com/feed/',
					action: 'window',
					title: 'RSS Feed'
				}
			]
		}	
			
        gigya.services.socialize.showFollowBarUI({}, params1);
	
	</script>
	<br><br>
	<div id="bar1" style="text-align:center;"></div>
</div>