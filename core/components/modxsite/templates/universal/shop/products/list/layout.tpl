{*
    Шаблон для вывода карточки товара в списке
*}

{extends file="shop/products/layout.tpl"}


{block name=cart}

            <div class="col-md-{12/$cols} text-center">
                <div class="row">
                    <div class="col-md-4">
                        {*
                            Здесь нам не приходится проверять фото на наличие, так как это выполняется на уровне процессора.
                        *}
                        <div class="inner">
                            <div class="image-box">

                                <div class="product-labels-wrapper clearfix top label-type-2">
                                </div>
                                <a href="{$object.uri}">
                                    <img src="{$src}" title="{$object.pagetitle|@escape}" class="a-center" align="center-text"
                                         class="img-responsive" />
                                </a>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 text-center">

                        {$smarty.block.parent}

                    </div>
                </div>
            </div>

{/block}

