{literal}
<style type="text/css" media="all">

	/* splash column */
	#top_bar						{clear:both;margin:0;padding:0}
	#top_bar	#logo				{overflow:hidden;z-index:1;position:relative;background:url({/literal}{$smarty.const.BIT_ROOT_URL}{literal}themes/styles/bitweaver2/images/bitweaver_contentmanagement.jpg) no-repeat center top;display:block;clear:both;margin:0 auto}
	#top_bar	#logo	p			{text-align:center;color:#fadc00;clear:both;margin:230px auto 0 auto;width:75%;max-width:26em;text-transform:uppercase}
	#top_bar	#logo	p			{font-size:0.6em;font-family:'Palatino Linotype',Palatino,Georgia,serif;line-height:1.4em}
	
	
	
	/* 3 areas, all */
	ul.doc,	ul.com,	ul.dev			{width:28%;float:left;margin:32px 0}
	ul.doc							{margin-left:32px}
	ul.doc	li, 
	ul.com	li, 
	ul.dev	li						{list-style-type:disc;padding-left:0;margin-left:30px;color:#000;line-height:1.4em}
	ul.doc	li	a, 
	ul.com	li	a,
	ul.dev	li	a					{color:#000;border-bottom:1px solid #cfca93;text-decoration:none}
	ul.doc	li	a:hover,	
	ul.com 	li	a:hover,
	ul.dev	li	a:hover				{border-bottom:1px solid #121212;color:#000}
	
	
	/* read more */
	ul.doc em a, 
	ul.com em a, 
	ul.dev em a						{color:#f2f2f0;background:#121212;font-style:normal;padding:0 4px;font-size:11px;border:3px double #fff}
	
	ul.doc em a:visited, 
	ul.com em a:visited, 
	ul.dev em a:visited				{color:#f2f2f0;background:#121212;font-style:normal;border:3px double #fff}
	
	ul.doc em a:hover, 
	ul.com em a:hover, 
	ul.dev em a:hover				{color:#ffffff;background:#404040;text-decoration:none;border:3px double #fadc00}
	
	
	
	/* images */
	li.area	a						{border-bottom:4px solid #f9f7e8;display:block;height:80px;width:160px}	
	li.area a:visited				{border-bottom:4px solid #f9f7e8;display:block;height:80px;width:160px}
	li.area	a:hover					{border-bottom:4px solid #fadc00;display:block}
	
	ul li.area						{list-style-type:none;margin-left:0}
	ul li.area	a					{border:none;border-bottom:4px solid #fadc00}
	ul:hover li.area	a			{border-bottom:4px solid #ffe85a}
	
	
	
	/* download / home / demo */
	#articles #top ul 				{text-align:center;margin:8px 0 16px 0}
	#articles #top ul li			{text-align:center;display:inline}
	#articles #top ul li a			{color:#f0f0f0;background:#7aa9dd}
	#articles #top ul a:visited		{color:#f0f0f0;background:#7aa9dd}
	#articles #top ul a:hover		{background:#3fceee}
	
</style>
{/literal}	

	<ul class="doc">
		<li class="area"><a href="http://doc.bitweaver.org"><img src="{$smarty.const.BIT_ROOT_URL}themes/styles/bitweaver2/images/doc_logo.gif" /></a></li>
		<li><a href="/">features of bitweaver</a></li>
		<li><a href="/">tutorials</a></li>				
		<li><a href="/">online help pages</a></li>
		<li><a href="/">for website admins</a></li>
		<li><a href="/">for developers</a></li>
		<li style="list-style-type:none;margin-left:50px"><em><a style="background-color:#bfa408" href="/">read more</a></em></li>
	</ul>

	<ul class="com">
		<li class="area"><a href="http://com.bitweaver.org"><img src="{$smarty.const.BIT_ROOT_URL}themes/styles/bitweaver2/images/com_logo.gif" /></a></li>
		<li><a href="/">forum</a></li>
		<li><a href="/">user blogs</a></li>
		<li><a href="/">FAQ</a></li>
		<li><a href="/">tipps & tricks</a></li>
		<li><a href="/">live bitweaver sites</a></li>
		<li style="list-style-type:none;margin-left:50px"><em><a style="background-color:#aa3f20" href="/">read more</a></li></em>
	</ul>

	<ul class="dev">
		<li class="area"><a href="http://dev.bitweaver.org"><img src="{$smarty.const.BIT_ROOT_URL}themes/styles/bitweaver2/images/dev_logo.gif" /></a></li>
		<li><a href="/">release notes</a></li>
		<li><a href="/">security notices</a></li>
		<li><a href="/">research & dev</a></li>
		<li><a href="/">API details</a></li>
		<li><a href="/">your own plugin?</a></li>
		<li style="list-style-type:none;margin-left:50px"><em><a style="background-color:#005999" href="/">read more</a></em></li></li>
	</ul>
	

<div class="clear"><br /></div>