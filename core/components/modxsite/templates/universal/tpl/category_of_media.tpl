{extends "layout.tpl"}

{block name=content}

    {assign var=params value=[
    "parent"=> $modx->resource->get('id')
    ,"showhidden" => true
    ,"showunpublished" => true
    ,"cache"     => 0
    ]}
    {processor action="web/resources/getdata" ns="modxsite" params=$params assign=result}

    {* Набиваем через единый шаблон листинга *}
    <div class="content-wrapper">
        <div class="container">
            <div class="main-container col2-right-layout">
                {include file="category_of_media/catalog/list/fetch.tpl"}
            </div>
        </div>
    </div>
{/block}

