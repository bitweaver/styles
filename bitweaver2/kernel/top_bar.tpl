{strip}
	<div id="top_bar">
	
		<div id="top">
			<ul>
				<li><a title="homepage" href="/">home&nbsp;&raquo;</a></li>
				<li><a title="download latest bitweaver" href="http://bitweaver.org/GetCode">download&nbsp;&raquo;</a></li>
				<li><a title="try bitweaver in action" href="http://demo.bitweaver.org">demo&nbsp;&raquo;</a></li>
			</ul>
		</div>

		{if $SCRIPT_NAME eq '/articles/index.php'}

		<img src="{$smarty.const.BIT_ROOT_URL}themes/styles/bitweaver2/images/bitweaver.gif" height="183" width="238" />
		<img src="{$smarty.const.BIT_ROOT_URL}themes/styles/bitweaver2/images/bitweaver_punchline_{1|rand:5}.gif" height="34" width="238" />
		<p>Out of the box bitweaver comes with a full set of content packages like Articles, Wiki, Blogs, Image and Video Galleries &ndash; and framework packages like User Management, Choice of Database, Languages, Theming, Comments &hellip; and many, many more.</p>
		<p>Each package sports various optional features for you to set up your site just like you need. Bitweaver is ideal for large scale community websites and corporate applications &ndash; yet it is easy to set up and to administrate. It's Open Source, fast, scalable, modular, and free.</p>
		
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