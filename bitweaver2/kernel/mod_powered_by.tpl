{* $Header$ *}
{strip}
{bitmodule title="$moduleTitle" name="powered_by"}
	<ul>
		<li><a href="http://www.bitweaver.org/">{biticon ipackage="liberty" iname="bitweaver" ipath="bitweaver/" iexplain="Powered by bitweaver" iforce=icon}</a></li>
		<li><a href="http://smarty.php.net/">{biticon ipackage="liberty" iname="smarty" ipath="bitweaver/" iexplain="Powered by Smarty" iforce=icon}</a></li>
		<li><a href="http://adodb.sourceforge.net/">{biticon ipackage="liberty" iname="adodb" ipath="bitweaver/" iexplain="Powered by Adodb" iforce=icon}</a></li>
		{if $gDbType eq 'firebird'}
			<li><a href="http://www.firebirdsql.org/">{biticon ipackage="liberty" iname="firebird" ipath="bitweaver/" iexplain="Powered by Firebird" iforce=icon}</a></li>
		{/if}
		{if $gDbType eq 'mysql'}
			<li><a href="http://www.mysql.com/">{biticon ipackage="liberty" iname="mysql" ipath="bitweaver/" iexplain="Powered by MySQL" iforce=icon}</a></li>
		{/if}
		{if $gDbType eq 'postgresql'}
			<li><a href="http://www.postgresql.org/">{biticon ipackage="liberty" iname="postgresql" ipath="bitweaver/" iexplain="Powered by PostgreSQL" iforce=icon}</a></li>
		{/if}
		{if $gDbType eq 'oracle'}
			<li><a href="http://www.oracle.com/">{biticon ipackage="liberty" iname="oracle" ipath="bitweaver/" iexplain="Powered by Oracle" iforce=icon}</a></li>
		{/if}
		<li><a href="http://htmlpurifier.org">{biticon ipackage="liberty" iname="htmlpurifier" ipath="bitweaver/" iexplain="Powered by HTMLPurifier" iforce=icon}</a></li>
	</ul>
{/bitmodule}
{/strip}
