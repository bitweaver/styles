{strip}
{foreach from=$chatter item=line}
	<li class="{if $line.chatterbox_id % 2 == 0}even{else}odd{/if}">
		{if $datetime}
			<span class="date">{$line.created|bit_short_datetime} </span>
		{else}
			<span class="date">{$line.created|bit_short_time} </span>
		{/if}
		<span class="username">&lt;{$line.author}&gt;</span> <span class="chatline">{$line.data}</span>
		<span class="clear"><!-- --></span>
	</li>
{/foreach}
{/strip}
