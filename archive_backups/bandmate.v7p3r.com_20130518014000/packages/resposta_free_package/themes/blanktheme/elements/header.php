<?php            defined('C5_EXECUTE') or die(_("Access Denied.")); ?>


<!doctype html>

<html lang="<?php           echo LANGUAGE; ?>" class="no-js">

<head>

<meta charset="<?php           echo APP_CHARSET;?>">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">


<meta name="viewport" content="width=device-width, initial-scale=1"> 	

<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.5.3/modernizr.min.js"></script>

<link rel="stylesheet" href="<?php           echo $this->getThemePath()?>/css/framework.css" media="screen"/>
<link rel="stylesheet" href="<?php           echo $this->getThemePath()?>/theme.css" media="screen"/>


<?php     Loader::element('header_required'); ?>

<!--[if lt IE 7 ]> <body class="ie6"> <![endif]-->

 <!--[if IE 7 ]>    <body class="ie7"> <![endif]-->

 <!--[if IE 8 ]>    <body class="ie8"> <![endif]-->

 <!--[if IE 9 ]>    <body class="ie9"> <![endif]-->


</head>



<body>


<div class="container">



<div class="row header">


<div class="twelvecol">
<div class="fourcol">

<?php     

			$a = new globalArea('Logo');
			$a->display($c);			
			?>


</div>
<div class="eightcol last">
<?php     

			$a = new globalArea('Slogan');
			$a->display($c);			
			?>
			
</div>

</div>
<div class="twelvecol ">
<div class="tooglenav">Navigation</div>
<?php     

			$a = new globalArea('Navigation');
			$a->display($c);			
			?>



</div>
</div>