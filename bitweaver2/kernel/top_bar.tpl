{strip}
	<div id="top_bar">
	
		<div id="top">
			<ul>
				<li><a title="try bitweaver live install" href="http://demo.bitweaver.org">demo</a></li>
				<li{if $SCRIPT_NAME eq '/articles/index.php'} style="position:relative;top:-4px"{/if}><a title="download latest bitweaver" href="http://bitweaver.org/GetCode">download</a></li>
				<li><a title="homepage" href="/">home</a></li>
			</ul>
		</div>

		{if $SCRIPT_NAME eq '/articles/index.php'}
			
			<div id="logo">
				<p>Out of the box bitweaver comes with a full set of content packages like Articles, Wiki, Blogs, Image and Video Galleries &ndash; and framework packages like User Management, Choice of Database, Languages, Theming, Comments &hellip; and many, many more. <br /><br/>Each package sports various optional features for you to set up your site just like you need. Bitweaver is ideal for large scale community websites and corporate applications &ndash; yet it is easy to set up and to administrate. It's Open Source, fast, scalable, modular, and free.</p>
			</div>
		
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