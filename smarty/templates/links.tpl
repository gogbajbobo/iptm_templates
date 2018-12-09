{* Smarty *}

<!--
Ссылки наружу
-->

<div class="container-fluid text-center bg-white">
    <div class="row">
        <div class="is-flex">

            {foreach $links as $link}

                <div class="col-sm-6 col-md-4">

                    <a href="{$link.href}" target="_blank">
                        <div class="link-thumbnail thumbnail">
                            <img class="block-image" src="{$images_path}/{$link.image_src}" alt="{$link.alt_text}">
                        </div>
                    </a>
                    
                </div>

            {/foreach}

        </div>
    </div>
</div>
