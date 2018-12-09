{* Smarty *}

<!-- Поиск -->
<div class="modal fade" id="iptm-search" role="dialog">
    <div class="modal-dialog">

        <form method="post" action="/search.ru.html">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Поиск</h4>
                </div>
                <div class="modal-body">
                    <input class="form-control" name="search" placeholder="Поиск" type="text" required><br>
                    <div class="form-group">
                        <span>Искать</span>
                        <select class="form-control input-small inline-select" name="method">
                            <option value="or" selected="">любое</option>
                            <option value="and">каждое</option>
                        </select>
                        <span>слово, </span>
                        <span>как прописано:</span>
                        <input type="checkbox" name="exact" value="1">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Отменить</button>
                    <button type="submit" class="btn btn-primary">Искать</button>
                </div>
            </div>
        </form>

    </div>
</div>
