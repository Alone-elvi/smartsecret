{block name=params}

    {$options = "&q=100&h=50"}

{/block}

{assign var=params value=[
"where"=>["id"=>'177']
,"current"  => true
,"showhidden" => true
,"showunpublished" => true
]}

{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{if $result.success}
    {assign var=object value=$result.object}
{/if}
{$image = $object.image|default:$object.imageDefault}

{$src = $modx->runSnippet('phpthumbof', [
"input" => $image,
"options"   => $options
])}

<a href="/" title="{$object.content|@escape}" class="logo responded">
    <img src="{$src}"
         alt="{$object.content|@escape}"/>
</a>
