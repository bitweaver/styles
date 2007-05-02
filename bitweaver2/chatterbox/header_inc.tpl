{if $smarty.const.ACTIVE_PACKAGE eq "chatterbox"}
	<script type="text/javascript">
		var refresh_timeout = 4;
		var get_chat  = "{$smarty.const.CHATTERBOX_PKG_URL}get_chat.php";
		var get_users = "{$smarty.const.CHATTERBOX_PKG_URL}get_users.php";
		var send_chat = "{$smarty.const.CHATTERBOX_PKG_URL}store_chat.php";
	</script>
	<script type="text/javascript" src="{$smarty.const.CHATTERBOX_PKG_URL}js/chat.js"></script>
	<style type="text/css">
		{literal}
			#chatterbox .chat *		{text-align:left}
			#chatterbox .chat th	{font-size:1em;vertical-align:middle}
			#chatterbox .chat td	{vertical-align:top}
			#chatterbox .chat form *	{padding:0 4px;margin:0 4px}
			#chatterbox .chat .users	{height:30em;overflow:auto}
			#chatterbox .chat .history	{height:30em;overflow:auto}
			#chatterbox .chat .history ul	{margin:0;line-height:normal}
			#chatterbox .chat .history li	{margin:0;padding:0;line-height:normal;list-style-type:none}
		{/literal}
	</style>
{/if}
