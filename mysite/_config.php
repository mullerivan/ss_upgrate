<?php

global $project;
$project = 'mysite';

global $database;
$database = 'devnzcommercials';
//$database = 'mainlinetrack';
//$database = 'mainline_new';



require_once('conf/ConfigureFromEnv.php');
FulltextSearchable::enable();
// Set the site locale
i18n::set_locale('en_US');
Image::add_extension('GalleryImageExtension');

Security::setDefaultAdmin('cactus', '//aladin');
