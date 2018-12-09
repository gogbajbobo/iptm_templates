{* Smarty *}

<!--
раздел новостей
-->
<div id="myCarousel" class="carousel slide text-center bg-white" data-ride="carousel">
    <!-- Индикаторы (число индикаторов должно соответствовать числу новостей)-->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
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
            
        {/foreach}}

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
