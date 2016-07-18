{block name=params}

    {$options = "&q=100&h=80&w=80"}

{/block}

{assign var=params value=[
"parent"=>'160'
,"showhidden" => true
,"showunpublished" => true
]}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

<div class="col-md-6">
    <div class="text-blocks with-sprite clearfix">
        {assign var=i value=1}

        {foreach $result.object as $object}

            {$image = $object.image|default:$object.imageDefault}
            {$src = $modx->runSnippet('phpthumbof', [
            "input" => $image,
            "options"   => $options
            ])}
            <div class="col-xs-6 a-center text-block">
                <span ><img alt="" src="{$src}"></span>
                <!-- <span class="icon"><img src="http://universal-magento-theme.meigeeteam.com/media/wysiwyg/universal_marker.png" alt=""></span> -->
                &nbsp<br>&nbsp
                <h3>{$object.content}</h3>

                {*$object.content*}
            </div>
            {if $i%2 == 0}
                <hr class="col-xs-12 solid">
            {/if}
            {assign var=i value=$i+1}

        {/foreach}
    </div>
</div>
<div class="col-md-6 a-right">
    <!--<a title="Banner" href="index.html#">-->
        <img alt="" src="assets/images/site/products/mp-desc-bottom.jpg">
    <!--</a>-->
</div>
<hr class="indent-18 white-space" />


