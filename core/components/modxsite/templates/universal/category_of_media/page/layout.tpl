{*
    Шаблон для вывода товара на собственной странице
*}

{extends file="shop/products/layout_page.tpl"}

{block name=cart}
    <div class="product-view" itemtype="http://schema.org/Product" itemscope="">
        <meta content="{$object.pagetitle}" itemprop="name">
        <div itemtype="http://schema.org/Offer" itemscope="" itemprop="offers">
            <div class="product-essential">
                <div class="row clearfix no-sidebar">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-img-box col-sm-6 medium-layout text-center">
                                <!--<div class="product-image-gallery clearfix loading hide-overlay">
                                    <div class="product-image product-image-zoom inner ">-->
                                <a href="{$image}" class="fancybox">
                                    <!--data-toggle="lightbox"
                                   data-gallery="navigateTo"
                                   data-footer="Acapulco Lounge Chair"
                                   class="lightbox-button-->
                                    <!--<i class="fa fa-search"></i>-->

                                    <div class="product-labels-wrapper clearfix top label-type-2">
                                    </div>
                                    <img src="{$src}"  alt=""
                                         title="" id="image" data-zoom-image="{$src}" />

                                </a>
                                <!--</div>
                            </div>-->
                            </div>

                            {$smarty.block.parent}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            {*$object.content*}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}



