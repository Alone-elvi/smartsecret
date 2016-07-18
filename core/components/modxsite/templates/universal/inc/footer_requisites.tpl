{assign var=params value=[
"where"=>["id"=>'166']
,"current"  => true
,"showhidden" => true
,"showunpublished" => true
]}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

{if $result.success}
    {assign var=phone value=$result.object}
{/if}
{assign var=params value=[
"where"=>["id"=>'167']
,"current"  => true
,"showhidden" => true
,"showunpublished" => true
]}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{if $result.success}
    {assign var=email value=$result.object}
{/if}
{assign var=params value=[
"where"=>["id"=>'168']
,"current"  => true
,"showhidden" => true
,"showunpublished" => true
]}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
{if $result.success}
    {assign var=adres value=$result.object}
{/if}

<a href="tel:{$phone.introtext}"><p>{$phone.pagetitle}: {$phone.introtext}</p></a>
<p>{$email.pagetitle}: <a href="mailto:{$email.introtext}">{$email.introtext}</a></p>
<p>{$adres.pagetitle}: {$adres.introtext}</p>
