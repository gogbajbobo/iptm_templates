{* Smarty *}

<!--Обратная связь-->
<div id="iptm-feedback" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <form method="post" action="/mails.ru.html">

            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Обратная связь</h4>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="row">
                                <div class="col-sm-12 form-group">
                                    <input class="form-control" id="name" name="otpr_name" placeholder="Имя" type="text" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 form-group">
                                    <input class="form-control" id="email" name="otpr_addr" placeholder="E-mail" type="email" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 form-group">
                                    <input class="form-control" id="subject" name="subj" placeholder="Тема" type="text" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 hidden-xs">
                            <img class="postmark" src="{$images_path}/postmark.gif">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <textarea class="form-control" id="body" name="body" placeholder="Тест сообщения" rows="5"></textarea><br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="g-recaptcha pull-right" data-sitekey="6Lcvsx4UAAAAAJsQUiRU2J8y_ybLKYbSPHEoPx4P" data-callback="enableMailFormSubmitButton" data-expired-callback="disableFormSubmitButtons"></div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Отменить</button>
                    <button type="submit" class="btn btn-primary form-submit-button" id="mail-form-submit-button">Отправить</button>
                </div>

            </div>
        </form>

    </div>
</div>
