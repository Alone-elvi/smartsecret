{extends file="layout.tpl"}


{block name=content}

    {processor action="web/catalog/category/products/getdata" ns="modxsite" assign=result}

    {* Набиваем через единый шаблон листинга *}
    <div class="content-wrapper">
        <div class="container">
            <div class="main-container col2-right-layout">
                {include file="shop/catalog/list/fetch.tpl"}
            </div>
        </div>
    </div>
{/block}