<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); 
$pkg = Package::getByHandle('flex1200'); ?>
<!DOCTYPE HTML>
<html>
	<head>
<?php  Loader::element('header_required'); ?>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width"/>
	
		<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getStyleSheet('typography.css');?>"  />
		<link rel="stylesheet" type="text/css" media="all" href="<?php  echo $this->getStyleSheet('css/flex1200.css');?>"  />
		<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	</head>
<body class="flex1200">
	<div class="flexgrid-1200"><!-- Begin Main Container -->
		<div class="onerow">
			<div class="col12 header">
				<div class="content">
					<?php  $a = new GlobalArea('Heading'); $a->display($c); ?>
				</div>
			</div>
		</div><!-- END HEADER -->