<?php   defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css" media="screen">@import "<?php  echo $this->getStyleSheet('default.css')?>";</style>
<?php  Loader::element('header_required'); ?>
<?php 
$cp = new Permissions($c);
if($cp->canWrite() && $cp->canAddSubContent()){
	echo('<style type="text/css">body{background-position:0px 49px;}</style>');
}?>
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
		<h1><a href="<?php   echo DIR_REL?>/"><?php  echo SITE?> </a></h1>
		<p><?php  echo $c->getCollectionName() ?></p>
	</div>
	<div id="menu">
		<?php 
			$ah = new Area('Header Nav');
			$ah->display($c);
		?>
	</div>
</div>
<hr />
<!-- end header -->
<!-- start page -->
<div id="wrapper">
