{* Smarty *}

<!--
Новости
-->
<div id="news" class="container-fluid text-center bg-grey info-section">
    <h2 class="block-title">Новости</h2>
    <div class="row">
        <ul class="nav nav-tabs nav-justified">

            {foreach $news as $news_block}

                <li {if $news_block@first}class="active"{/if}>
                    <a data-toggle="tab" href="{$news_block.href}">{$news_block.title}</a>
                </li>

            {/foreach}

        </ul>
    </div>
    <div class="tab-content">

        {foreach $news as $news_block}

            <div id="{$news_block.id}" class="tab-pane {if $news_block@first}active{/if}">
                <div class="row no-top-border">

                    <div class="row text-left news-list inner-block">

                        {foreach $news_block.items as $news_item}

                            <div>
                                <span>{$news_item.date}</span>
                                <a href="{$news_item.href}">{$news_item.title}</a>
                            </div>

                        {/foreach}

                    </div>

                </div>
            </div>

        {/foreach}

    </div>
    <div class="row text-center">
        <a class="btn btn-default btn-md" role="button" href="#">Архив&nbsp;новостей</a>
    </div>
    <br>
</div>
