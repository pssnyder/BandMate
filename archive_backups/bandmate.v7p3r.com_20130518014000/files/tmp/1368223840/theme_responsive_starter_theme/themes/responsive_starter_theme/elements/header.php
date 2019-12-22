<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php   echo LANGUAGE?>" lang="<?php   echo LANGUAGE?>">
<head>
<?php   Loader::element('header_required'); ?>

<link href="<?php   echo $this->getThemePath(); ?>/css/1140.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" media="screen" type="text/css" href="<?php   echo $this->getStyleSheet('styles.css')?>" />
<link rel="stylesheet" media="screen" type="text/css" href="<?php   echo $this->getStyleSheet('typography.css')?>" />

<!-- 1140px Grid styles for IE -->
<!--[if lte IE 9]><link rel="stylesheet" href="<?php   echo $this->getThemePath(); ?>/css/ie.css" type="text/css" media="screen" /><![endif]-->

<?php    Loader::element('footer_required'); ?>