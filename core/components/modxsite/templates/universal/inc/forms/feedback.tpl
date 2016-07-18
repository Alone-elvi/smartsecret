{if $smarty.post.feedback_submit}
    {$request = $smarty.post}
    {processor action="web/forms/feedback" ns="modxsite" params=$request assign=form_result}
{else}
    {$request = []}
{/if}

{if !$form_result.success}
    <div class="content-wrapper">
        <div class="container">
            <div class="main-container ">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="page-title">
                            <h2>Контактная информация</h2>
                        </div>
                        {include file="inc/footer_requisites.tpl"}
                        <iframe class="map-wrapper"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2243.5747049959596!2d37.66668331593165!3d55.783257980561494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b53584092481d5%3A0xfe6963ada13d8de3!2zMS3QuSDQmtGA0LDRgdC90L7RgdC10LvRjNGB0LrQuNC5INC_0LXRgC4sIDMsINCc0L7RgdC60LLQsCwgMTA3MTQw!5e0!3m2!1sru!2sru!4v1447630400263"
                                width="100%" height="450" frameborder="0" style="border:0"
                                allowfullscreen></iframe>
                        <form name="order_form" action="{link id=$modx->resource->id}?action=submit" method="post">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h2 class="panel-title">Написать нам</h2>
                                </div>


                                <div class="panel-body">

                                    {if $request && !$form_result.success}
                                        <div class="alert alert-danger">
                                            {$form_result.message|default:"Ошибка выполнения запроса"}
                                        </div>
                                        {if $form_result.field_errors}
                                            <div class="alert alert-info">
                                                {foreach $form_result.field_errors as $message}
                                                    <p>{$message}</p>
                                                {/foreach}
                                            </div>
                                        {/if}

                                    {/if}

                                    <div class="form-group {if $form_result.field_errors.fullname}has-error{/if}">
                                        <label for="fullname">Имя</label>

                                        <div class="">
                                            <input id="fullname" class="form-control" placeholder="Как вас зовут?"
                                                   type="text"
                                                   value="{if $request.fullname}{$request.fullname}{else}{$profile.fullname}{/if}"
                                                   name="fullname">
                                            {if $form_result.field_errors.fullname}
                                                <span class="help-inline">{$form_result.field_errors.fullname}</span>
                                            {/if}
                                        </div>
                                    </div>


                                    <div class="form-group {if $form_result.field_errors.email}has-error{/if}">
                                        <label for="email">Электронная почта</label>
                                        {if $profile.email}
                                            <div class="">
                                                <input type="hidden" value="{$profile.email}" name="email">
                                                <input id="email" class="form-control" type="text"
                                                       value="{$profile.email}" disabled>
                                            </div>
                                        {else}
                                            <div class="">
                                                <input id="email" class="form-control"
                                                       placeholder="Адрес электронной почты" type="text"
                                                       value="{$request.email}" name="email">
                                            </div>
                                            {if $form_result.field_errors.email}
                                                <span class="help-inline">{$form_result.field_errors.email}</span>
                                            {/if}
                                        {/if}
                                    </div>


                                    <div class="form-group {if $form_result.field_errors.phone}has-error{/if}">
                                        <label for="phone">Телефон</label>

                                        <div class="">
                                            <input id="phone" class="form-control"
                                                   placeholder="Номер телефона для связи" type="text"
                                                   value="{if $request.phone}{$request.phone}{else}{$profile.phone}{/if}"
                                                   name="phone">
                                            {if $form_result.field_errors.phone}
                                                <span class="help-inline">{$form_result.field_errors.phone}</span>
                                            {/if}
                                        </div>
                                    </div>


                                    <div class="form-group {if $form_result.field_errors.message}has-error{/if}">
                                        <label for="message">Текст сообщения</label>

                                        <div class="">
                                            <textarea rows="10" id="message" class="form-control"
                                                      placeholder="Ваш вопрос или пожелание"
                                                      name="message">{$request.message}</textarea>
                                            {if $form_result.field_errors.message}
                                                <span class="help-inline">{$form_result.field_errors.message}</span>
                                            {/if}
                                        </div>
                                    </div>


                                    {if !$request OR $form_result.field_errors.captcha OR !$request.captcha}
                                        <div class="form-group {if $form_result.field_errors.captcha}has-error{/if}">
                                            <label for="captcha">Введите код с картинки</label>
                                            <input id="captcha" type="text" class="form-control w150"
                                                   placeholder="Проверочный код" name="captcha" value=""/>
                                            {$modx->parseChunk('modcaptcha', [])}
                                            {if $form_result.field_errors.captcha}
                                                <div>
                                                    <span class="help-inline">{$form_result.field_errors.captcha}</span>
                                                </div>
                                            {/if}
                                        </div>
                                    {else}
                                        <input type="hidden" name="captcha" value="{$request.captcha}"/>
                                    {/if}

                                </div>

                                <div class="panel-footer">
                                    <input type="submit" class="btn btn-primary" name="feedback_submit"
                                           value="Отправить"/>
                                </div>

                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
{else}
    <p><span class="success">{$form_result.message|default:"Спасибо! Ваше сообщение принято."}</span></p>
{/if}

