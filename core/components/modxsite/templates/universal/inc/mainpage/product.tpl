{block name=params}

    {$options = "&q=100"}

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
    <div>
        <!--<div class="container">-->
        <div class="main-container col1-layout">
            <div class="row">
                <div class="col-main col-xs-12">
                    <div class="std">
                        <div class="text-banner-wrapper clearfix fullwidth-banners two-banners">
                            <div>
                                <!--<div class="background-wrapper">-->
                                {foreach $result.object as $object}
                                    {$image = $object.image|default:$object.imageDefault}

                                    {$src = $modx->runSnippet('phpthumbof', [
                                    "input" => $image,
                                    "options"   => $options
                                    ])}
                                    <div class="text-banner">

                                        <a href="{$object.uri}" title="{$object.introtext}">
                                            <img src="{$src}" alt="">
                                            <span class="banner-content skin-2">
                                                <span class="title">{$object.introtext}</span>
                                                <!--<span class="subtitle">{$object.pagetitle}</span>-->
                                                <span class="text hidden-sm hidden-xs">{$object.content}</span>
                                            </span>
                                            </span>
                                        </a>
                                    </div>
                                {/foreach}
                                <hr class="indent-18 white-space"/>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


