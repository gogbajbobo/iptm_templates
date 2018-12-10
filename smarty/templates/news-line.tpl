{* Smarty *}

<!--
раздел новостей
-->
<div id="myCarousel" class="carousel slide text-center bg-white" data-ride="carousel">

    <ol class="carousel-indicators">

        {foreach $news_lines as $news}

            <li data-target="#myCarousel" data-slide-to="{$news@index}" {if $news@first}class="active"{/if}></li>

        {/foreach}

    </ol>

    <!-- Слайды с заголовками новостей -->
    <div class="carousel-inner" role="listbox">

        {foreach $news_lines as $news}

            <div class="item carousel-item {if $news@first}active{/if}">
                <h5>
                    <span>{$news.date}</span>
                    <br>
                    <a href="{$news.href}">{$news.title}</a>
                </h5>
            </div>
            
        {/foreach}

    </div>

    <!-- кнопки справа и слева -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>

</div>
