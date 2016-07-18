{block name=params}

    {$options = "&q=100&w=400&h=300"}

{/block}

{assign var=params value=[
"parent"=>'85'
,"showhidden" => true
,"showunpublished" => true,
"cache" => 1,
"dir" => "DESC"
]}
{processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}
<div class="content-wrapper">
    <div class="container">
        <div class="row">
            {foreach $result.object as $object}
                <div class="col-md-6 text-center">
                    <div class="row">
                        {$image = $object.image|default:$object.imageDefault}

                        {$src = $modx->runSnippet('phpthumbof', [
                        "input" => $image,
                        "options"   => $options
                        ])}
                        <h2>
                            <a href="{$object.uri}" title="{$object.introtext}">
                                            <span class="banner-content skin-2">
                                                <span class="title">{$object.introtext}</span>
                                                <!--<span class="subtitle">{$object.pagetitle}</span>-->
                                                <span class="text hidden-sm hidden-xs">{$object.content}</span>
                                            </span>
                            </a>
                        </h2>
                        <div>
                            <br>
                            <a class="btn btn-default btn-cart btn-success" href="{$object.uri}">Перейти к категории</a>
                        </div>
                        <hr class="indent-36 white-space "/>
                        <hr class="indent-18 white-space "/>

                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</div>
<hr class="indent-36 white-space"/>

