{*
    Основаная информация товара.
    Инклюдится в конечных карточках.
*}

{block name=params}

    {$options = "&q=100&w=600"}

{/block}


{$image = $object.image|default:$object.imageDefault}

{$src = $modx->runSnippet('phpthumbof', [
"input" => $image,
"options"   => $options
])}


{block name=cart}
    <div data-smodx-productcls="listproduct" class="product-shop col-sm-6 medium-layout a-center">
        <form action="" method="post">
            <input type="hidden" name="product_id" value="{$object.product_id}"/>
            <input type="hidden" name="action" value="add_product"/>

            <div class="product-name">
                <br>
                <h1 itemprop="name">
                    {$object.pagetitle|@escape}
                </h1>
            </div>
            <td colspan="2">
                <div class="sku-reviews-block">
                    <br>
                    <span>Категория: </span>
                    <a href="{$object.category_uri}"
                       title="{$object.category_title|@escape}">
                        <span
                                itemprop="availability">{$object.category_title}
                        </span>
                    </a>

                    <div class="price-box">
                        <span class="regular-price">
                            <span class="price">
                                    {$object.sm_price|number_format:2:".":" "} {$object.currency_code}
                            </span>
                        </span>
                    </div>
                </div>
                <div class="add-to-box">
                    <div class="add-to-cart">
                        <div class="quantity-wrapper clearfix">
                            <div class="quantity-decrease" onclick="qtyDown()"><i class="fa fa-minus"></i></div>
                            <input id="qty" class="form-control qty" type="text" name="quantity" value="1"
                                   style="width: 50px; "/>

                            <div class="quantity-increase" onclick="qtyUp()"><i class="fa fa-plus"></i></div>

                        </div>
                        <button class="btn btn-default btn-cart btn-success" type="submit"><i
                                    class="fa fa-shopping-cart"></i><span> В корзину </span></span></i>
                        </button>
                    </div>

                </div>

        <div class="clearfix"></div>
        <div class="product-collateral">
            <div class="product-simple-list panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            Описание продукта </h4>
                    </div>
                    <div class="panel-body">
                        <h2>детали</h2>

                        <div class="std text-justify">
                            {$object.content}
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script type="text/javascript" src="{$pre_template_url}js/user.js"></script>
{/block}
