{*
    depricated
*}

{$assets_url = $modx->getOption('assets_url')}
{$current_doc_id = $modx->resource->id}
<noindex>
    <form id="loginLoginForm" class="form" action="[[~[[*id]]]]" method="post">
        <input type="hidden" name="pub_action" value="login" />
        <input type="hidden" name="returnUrl" value="{$request_uri}" />

        <div class="row">

            <div class="col-md-12">
                <div class="loginLogin">
                    <fieldset class="loginLoginFieldset">
                        <div class="control-group">
                            <label class="loginUsernameLabel" for="loginUsername" >Имя пользователя</label>
                            <div class="controls">
                                <input id="loginUsername" class="form-control loginUsername" type="text" name="username" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="loginPasswordLabel" for="loginPassword">Пароль</label>
                            <div class="controls">
                                <input id="loginPassword" class="form-control loginPassword" type="password" name="password" />
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
            <div class="col-md-12">
                <br />
                <span class="loginLoginButton ">
                    <button type="submit" name="Login" class="btn btn-success">Вход</button>
                    <a href="{$modx->makeUrl(104)}" class="btn btn-primary" rel="nofollow">Регистрация</a>
                    <a href="{$modx->makeUrl(108)}" class="btn btn-info" rel="nofollow">Забыли пароль?</a>
                </span>
            </div>

        </div>

    </form>
</noindex>
