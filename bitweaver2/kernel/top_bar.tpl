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
			<ul>
				<li><a title="try bitweaver in action" href="http://demo.bitweaver.org"><strong>&rArr;</strong><!--[if lt IE 7]>&rarr;<![endif]-->&nbsp;demo</a></li>
				<li><a title="download latest bitweaver" href="http://bitweaver.org/GetCode"><strong>&rArr;</strong><!--[if lt IE 7]>&rarr;<![endif]-->&nbsp;download</a></li>
				<li><a title="homepage" href="/"><strong>&rArr;</strong><!--[if IE 7]>&rarr;<![endif]-->&nbsp;home</a></li>
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