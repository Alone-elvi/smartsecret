{*if $modx->user->isAuthenticated($modx->context->key)*}
{if $modx->user->id}

    {include "inc/login/logout.tpl"}

{else}
    <div class="entrance-modal">
        <a href="javascript:;" class="pseudo top-link-login" role="button" data-toggle="modal" data-target="#LoginModal">
            <i class="fa fa-key"></i>Вход
        </a>
    </div>
{/if}