{* Smarty *}

<!--
navbar — логотип, меню, кнопка входа, и кнопка-гамбургер, появляющаяся при коллапсе меню
-->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <!--логотип-->
            <a class="navbar-brand navbar-brand-logo" href="#iptmPage">
                <img src="{$images_path}/iptm_logo_small.png">
            </a>
            <a class="navbar-brand visible-xs" id="infotext-navbar">ИПТМ РАН</a>
            <!--кнопка-гамбургер-->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <!--схлопывающееся меню-->
        <div class="collapse navbar-collapse" id="myNavbar">
            <!--основное меню — прижато влево-->
            <ul class="nav navbar-nav" id="menu-navbar">

                {foreach $navbar_menu as $navbar_menu_item}
                    <li {if $navbar_menu_item.class}class="{$navbar_menu_item.class}"{/if}>
                        <a href="{$navbar_menu_item.href}">{$navbar_menu_item.text}</a>
                    </li>
                {/foreach}

            </ul>
            <!--втростепенное меню — прижато вправо-->
            <ul class="nav navbar-nav navbar-right">
                <!--вход-->
                <li>
                    <a href="#" data-toggle="modal" data-target="#iptm-login">Вход <span class="glyphicon glyphicon-log-in"></span></a>
                </li>
            </ul>

        </div>
    </div>
</nav>
