{*
    Основаная информация товара.
    Инклюдится в конечных карточках.
*}

{block name=params}

    {$options = "&q=100&w=300"}

{/block}


{$image = $object.image|default:$object.imageDefault}

{$src = $modx->runSnippet('phpthumbof', [
"input" => $image,
"options"   => $options
])}


{block name=cart}

    <h2><a href="{$object.uri}" title="{$object.pagetitle|@escape}">{$object.pagetitle}</a></h2>
    <span>Категория: </span>
    <a href="{$object.category_uri}"
       title="{$object.category_title|@escape}">
                        <span
                                itemprop="availability">{$object.category_title}
                        </span>
    </a>
    <div><br><a href="{{$object.uri}}" class="btn btn-default btn-cart btn-success">Перейти к товару</a></div>
    <hr class="indent-36 white-space visible-xs visible-sm"/>

{/block}
