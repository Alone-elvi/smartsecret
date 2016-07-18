{*
    Шаблон для вывода списка медиа
*}


{extends file="category_of_media/layout.tpl"}


{block name=cart}

    <div class="col-md-{12/$cols} text-center">
        <div class="row">
            <div class="col-md-12 text-center">

                {$smarty.block.parent}

            </div>
        </div>
    </div>

{/block}

