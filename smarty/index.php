<?php

define('SMARTY_DIR', './includes/smarty-3.1.33/libs/');

require_once(SMARTY_DIR . 'Smarty.class.php');
$smarty = new Smarty();

$smarty->assign('root_path', '..');
$smarty->assign('css_path', $smarty->getTemplateVars('root_path') . '/css');
$smarty->assign('js_path', $smarty->getTemplateVars('root_path') . '/js');
$smarty->assign('images_path', $smarty->getTemplateVars('root_path') . '/images');

$smarty->assign('page_lang', 'ru');
$smarty->assign('page_title', 'IMT RAS');

// $navbar_menu value should be generated from database data
$navbar_menu = [
    [
        'class' => 'hidden',
        'href' => '#iptmPage',
        'text' => 'ИПТМ РАН'
    ],
    [
        'href' => '#about',
        'text' => 'Об Институте'
    ],
    [
        'href' => '#news',
        'text' => 'Новости'
    ],
    [
        'href' => '#science',
        'text' => 'Наука'
    ],
    [
        'href' => '#education',
        'text' => 'Образование'
    ],
    [
        'href' => '#contest',
        'text' => 'Конкурсы'
    ],
    [
        'href' => '#resources',
        'text' => 'Ресурсы'
    ]
];

$smarty->assign('navbar_menu', $navbar_menu);

// $news_lines value should be generated from database data
$news_lines = [
    [
        'date' => '07/03/2017',
        'href' => '#',
        'title' => 'ФАНО России информирует о начале приема заявок на первые конкурсы Президентской программы поддержки ученых'
    ],
    [
        'date' => '03/03/2017',
        'href' => '#',
        'title' => 'Указ Президента Российской Федерации о Стратегии научно-технологического развития Российской Федерации'
    ],
    [
        'date' => '03/03/2017',
        'href' => '#',
        'title' => 'Выборы в РАН пройдут в формате «жесткого голосования»'
    ],
    [
        'date' => '01/03/2017',
        'href' => '#',
        'title' => 'Академик Валерий Чарушин: «Наука во время "чумы"»'
    ],
    [
        'date' => '28/02/2017',
        'href' => '#',
        'title' => 'Александр Асеев прокомментировал письмо академика Павла Логачева'
    ],
    [
        'date' => '27/02/2017',
        'href' => '#',
        'title' => 'Реформа РАН признана провальной: ФАНО расширяется, институты выселяют'
    ]
];

$smarty->assign('news_lines', $news_lines);

// $news value should be generated from database data
$news = [
    [
        'id' => 'all-news',
        'href' => '#all-news',
        'title' => 'Лента&nbsp;новостей',
        'items' => [
            [
                'date' => '08/08/2017',
                'href' => '#',
                'title' => 'Заседание Учёного совета состоится 1 сентября 2017 г. в 11:00'    
            ],
            [
                'date' => '01/07/2017',
                'href' => '#',
                'title' => 'По заданию партии и правительства все начинаем собираться в отпуск'    
            ],
            [
                'date' => '07/06/2017',
                'href' => '#',
                'title' => 'Тут ещё одна новость про всякое другое уже'    
            ],
            [
                'date' => '01/05/2017',
                'href' => '#',
                'title' => 'Новость про майские праздники, огороды, картошку и ваще'    
            ],
            [
                'date' => '07/04/2017',
                'href' => '#',
                'title' => 'Тут какая-то новость про всякое'    
            ],
            [
                'date' => '03/03/2017',
                'href' => '#',
                'title' => 'Заседание семинара «Рентгеновская оптика» состоится 6 июня 2017 г. в 16:00'    
            ]
        ]
    ],
    [
        'id' => 'science-council',
        'href' => '#science-council',
        'title' => 'Учёный&nbsp;совет',
        'items' => [
            [
                'date' => '08/08/2017',
                'href' => '#',
                'title' => 'Заседание Учёного совета состоится 1 сентября 2017 г. в 11:00'    
            ],
            [
                'date' => '01/05/2017',
                'href' => '#',
                'title' => 'Очередная новость про заседание Учёного совета'    
            ],
            [
                'date' => '07/04/2017',
                'href' => '#',
                'title' => 'Ешё одна новость про заседание Учёного совета'    
            ],
            [
                'date' => '03/03/2017',
                'href' => '#',
                'title' => 'Новость про заседание Учёного совета'    
            ]
        ]
    ],
    [
        'id' => 'phd-council',
        'href' => '#phd-council',
        'title' => 'Диссертационный&nbsp;совет',
        'items' => [
            [
                'date' => '08/08/2017',
                'href' => '#',
                'title' => 'Заседание Диссертационного совета состоится 1 сентября 2017 г. в 11:00'    
            ],
            [
                'date' => '01/05/2017',
                'href' => '#',
                'title' => 'Очередная новость про заседание Диссертационного совета'    
            ],
            [
                'date' => '07/04/2017',
                'href' => '#',
                'title' => 'Ешё одна новость про заседание Диссертационного совета'    
            ],
            [
                'date' => '03/03/2017',
                'href' => '#',
                'title' => 'Новость про заседание Диссертационного совета'    
            ]
        ] 
    ],
    [
        'id' => 'seminars',
        'href' => '#seminars',
        'title' => 'Семинары',
        'items' => [
            [
                'date' => '01/07/2017',
                'href' => '#',
                'title' => 'Заседание семинара «Рентгеновская оптика» состоится 6 июля 2017 г. в 16:00'    
            ],
            [
                'date' => '07/06/2017',
                'href' => '#',
                'title' => 'Семинар «Физический» приглашает всех на доклад П.У.Пупкина «Жизнь после вчерашнего» 9 июня 2017 г. в 15:00'    
            ],
            [
                'date' => '01/05/2017',
                'href' => '#',
                'title' => 'Семинар «Химический» засядет 8 июня 2017 г. в 15:00 и будет заседать до 18:00'    
            ],
            [
                'date' => '07/04/2017',
                'href' => '#',
                'title' => 'А заседание семинара «Материаловедение и технология» состоится 7 июня 2017 г. в 16:00'    
            ],
            [
                'date' => '03/03/2017',
                'href' => '#',
                'title' => 'Заседание семинара «Рентгеновская оптика» состоится 6 июня 2017 г. в 16:00'    
            ]
        ]
    ],
    [
        'id' => 'conferences',
        'href' => '#conferences',
        'title' => 'Конференции',
        'items' => [
            [
                'date' => '01/07/2017',
                'href' => '#',
                'title' => 'Тут новость про конференцию какую-нибудь забавную'    
            ],
            [
                'date' => '07/06/2017',
                'href' => '#',
                'title' => 'А тут новость про конференцию уже какую-нибудь серьёзную'    
            ]
        ]    
    ]
];

$smarty->assign('news', $news);

// $links value should be generated from database data
$links = [
    [
        'href' => 'http://www.rfbr.ru/',
        'image_src' => 'footer_rffi.png',
        'alt_text' => 'РФФИ'
    ],
    [
        'href' => 'http://ras.ru/',
        'image_src' => 'footer_ras.png',
        'alt_text' => 'РАН'
    ],
    [
        'href' => 'http://минобрнауки.рф/',
        'image_src' => 'footer_minobr.png',
        'alt_text' => 'МинОбрНауки'
    ],
    [
        'href' => 'http://www.onit-ras.ru',
        'image_src' => 'footer_onitras.png',
        'alt_text' => 'ОНИТ РАН'
    ],
    [
        'href' => 'http://рнф.рф/',
        'image_src' => 'footer_rnf.png',
        'alt_text' => 'РНФ'
    ],
    [
        'href' => 'http://www.fcpir.ru/',
        'image_src' => 'footer_fcp.png',
        'alt_text' => 'ФЦП'
    ]
];

$smarty->assign('links', $links);

$smarty->display('index.tpl');

?>