{include file="bitpackage:kernel/header.tpl"}
{strip}
{if $print_page ne "y"}
	<a class="skip" style="position:absolute;top:0;left:-999em;width:0;height:0;" href="#content">{tr}Skip Navigation{/tr}</a>
	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		<div dir="rtl">
	{/if}

	<div id="wrap1" class="pkg-{$smarty.const.ACTIVE_PACKAGE|lower}">
		<div id="bittop">
			<div id="toplogin">
				{if $gBitUser->isRegistered()}
					{displayname} <a href="{$smarty.const.USERS_PKG_URL}logout.php">{tr}logout{/tr}</a>
				{else}
					<a href="{$smarty.const.USERS_PKG_URL}login.php">{tr}login{/tr}</a>
					{if $gBitSystem->isFeatureActive( 'allowRegister' )}
						&nbsp;<a href="{$smarty.const.USERS_PKG_URL}register.php">{tr}register{/tr}</a>
					{/if}
				{/if}
			</div>

			{if $gBitSystem->isFeatureActive( 'feature_top_bar' )}
				{include file="bitpackage:kernel/top_bar.tpl"}
			{/if}
		</div><!-- end #bittop -->
		
		{include file="bitpackage:kernel/top.tpl"}

		<div id="tikibody">
			<div id="tikimain">
				{include file="bitpackage:liberty/display_structure.tpl"}
				<a style="padding:0;margin:0;border:0;" name="content"></a>
				{if $pageError}
					<div class="error">{$pageError}</div>
				{/if}
				{include file=$mid}
			</div><!-- end #tikimain -->

			{*<div id="bitmodules">
				{section name=homeix loop=$l_modules}
					{$l_modules[homeix].data}
				{/section}

				{section name=homeix loop=$r_modules}
					{$r_modules[homeix].data}
				{/section}
			</div><!-- end #bitmodules -->*}

			<div id="tikibottom">
				{if $gBitSystem->isFeatureActive( 'feature_bot_bar' )}
					{include file="bitpackage:kernel/bot_bar.tpl"}
				{/if}
			</div><!-- end #tikibottom -->
		</div><!-- end #tikibody -->
	</div><!-- end #wrap1 -->
	{if $gBitSystem->isFeatureActive( 'feature_bidi' )}
		</div>
	{/if}
	{include file="bitpackage:kernel/footer.tpl"}
{/if}
{/strip}

