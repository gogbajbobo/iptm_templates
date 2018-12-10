{* Smarty *}

<!--Вход-->
<div class="modal fade" id="iptm-login" role="dialog">
    <div class="modal-dialog">

        <form method="post" action="/login.ru.html">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Вход</h4>
                </div>
                <div class="modal-body">
                    <input class="form-control" name="user" placeholder="Имя пользователя" type="text" required><br>
                    <input class="form-control" name="password" placeholder="Пароль" type="password" required><br>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Отменить</button>
                    <button type="submit" class="btn btn-primary">Войти</button>
                </div>
            </div>
        </form>

    </div>
</div>
