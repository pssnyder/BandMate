<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<?php   Loader::element('header_required'); ?>
		<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
		<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getStyleSheet('typography.css');?>"  />
		<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getStyleSheet('css/base.css');?>"  />
		<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getStyleSheet('css/skeleton.css');?>"  />
		<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getStyleSheet('css/layout.css');?>"  />
		<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getStyleSheet('fonts/fonts.css');?>"  />
		<!--[if lt IE 8]>
			<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getThemePath()?>/iefix.css"  />
		<![endif]-->
		<script type="text/javascript" src="<?php   echo $this->getThemePath()?>/js/jquery.event.frame.js"></script>
		<script type="text/javascript" src="<?php   echo $this->getThemePath()?>/js/jquery.jparallax.min.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function() 
			{
			$('#parallax .parallax-layer')
					.parallax({
					mouseport: $('#parallax')
				});
			});
		</script>
		<script type="text/javascript" src="<?php   echo $this->getThemePath()?>/js/jquery.fitvids.js"></script>
	</head>

<body>
<br class="clear" /><!-- Force clearing of concrete toolbar -->
<div class="container"><!-- Start container -->
	<div class="two-thirds column">
		<?php  $logo = new Area('Logo'); if ($logo->getTotalBlocksInArea($c) == 0 && !$c->isEditMode()) { ?>
		<h1 class="logo">
			<a href="<?php   echo DIR_REL?>/" title="<?php   echo SITE?>"><?php   
			$block = Block::getByName('My_Site_Name');  
			if( $block && $block->bID ) $block->display();   
			else echo SITE;
			?></a>
		</h1>
		<?php  } else { $logo->display($c); } ?>
	</div>
	<div class="one-third column">
		<?php   $a = new Area('Header Extra Content'); $a->display($c); ?>
	</div>
	<div class="sixteen columns">
		<div class="main-menu">
			<?php  
			$bt = BlockType::getByHandle('autonav');
			$bt->controller->displayPages = 'top';
			$bt->controller->orderBy = 'display_asc';                    
			$bt->controller->displaySubPages = 'none'; 
			$bt->controller->displaySubPageLevels = 'custom';
			$bt->controller->displaySubPageLevelsNum = '1';                   
			$bt->render('templates/main_menu');
			?>
		</div><!-- nav ends -->
	</div>
	
	<div class="sixteen columns">
		<!-- 3D Parallax Header -->
		<div style="clear: both;" id="parallax">
			<div class="parallax-layer" style="width: 1000px; height: 225px;">
				<img src="<?php  echo $this->getThemePath()?>/images/stripping_blossoms_layer2.png" style="height: 225px; width: 1000px;" />
			</div>
			<div class="parallax-layer" style="width: 383px; height: 225px; right: 15px;">
				<img src="<?php  echo $this->getThemePath()?>/images/sexy_babe2.png" style="width: 383px; height: 225px;" />
			</div>
			<div class="parallax-layer" style="width: 1100px; height: 225px;" >
				<img src="<?php  echo $this->getThemePath()?>/images/stripping_blossoms_layer3.png" style="width: 1100px; height: 225px;" />
			</div>
		</div>
		<!-- END 3D -->
		<div class="breadcrumb">
		<?php  
		$bt = BlockType::getByHandle('autonav');
		$bt->controller->displayPages = 'top';
		$bt->controller->orderBy = 'display_asc';                    
		$bt->controller->displaySubPages = 'relevant_breadcrumb';
		$bt->controller->displaySubPageLevels = 'all';                   
		$bt->render('templates/breadcrumb');
		?>
		</div>
	</div>