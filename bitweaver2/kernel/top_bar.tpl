<!--[if lt IE 7]>
	{literal}
		<style type="text/css">
			#top_bar #top ul li a strong {display:none}
			div.bitbox:first-letter	{display:block;float:left;line-height:0.7em}
		</style>
	{/literal}
<![endif]-->

{strip}
	<div id="top_bar">
	
		<div id="top">
			<a style="display:block;width:64px;height:64px;position:absolute;left:0;top:0" href="http://bitweaver.org/wiki/Try+it+out"><pre style="display:none">There are 50 ways to leave your old CMS for bitweaver: try it out!</pre></a>
			<ul>
				<li id="homelink"><strong>&rArr;</strong><!--[if lt IE 8]>&rarr;<![endif]--><a title="homepage" href="/">home</a></li>
				<li id="downlink"><strong>&rArr;</strong><!--[if lt IE 8]>&rarr;<![endif]--><a title="instant download! just add water" href="http://sourceforge.net/project/showfiles.php?group_id=141358">download</a></li>
				<li id="demolink"><strong>&rArr;</strong><!--[if lt IE 8]>&rarr;<![endif]--><a title="try bitweaver in action" href="http://demo.bitweaver.org">demo</a></li>
			</ul>
		</div>

		{if $SCRIPT_NAME eq '/articles/index.php'}
		
		<p id="logo">&nbsp;</p>
		<p class="rule">Out of the box bitweaver comes with a full set of content packages like Articles, Wiki, Blogs, Image and Video Galleries &ndash; and framework packages like User Management, Choice of Database, Languages, Theming, Comments &hellip; and many, many more.</p>
		<p class="stop">Each package sports various optional features for you to set up your site just like you need. Bitweaver is ideal for large scale community websites and corporate applications &ndash; yet it is easy to set up and to administrate. It's Open Source, fast, scalable, modular, and free.</p>
		
		{else}

			<a href="/">
				<img src="{$smarty.const.BIT_ROOT_URL}themes/styles/bitweaver2/images/bitweaver_logo.gif" height="120" width="120" />
			</a>
			
			<ul>
				<li class="doc"><a href="">doc</a></li>
				<li class="com"><a href="">com</a></li>
				<li class="dev"><a href="">dev</a></li>
			</ul>			

		{/if}

	</div>
{/strip}