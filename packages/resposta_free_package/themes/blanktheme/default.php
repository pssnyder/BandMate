<?php   defined('C5_EXECUTE') or die(_("Access Denied."));?>

<?php     $this->inc('elements/header.php'); ?>

<div class="row">
<div class="main">

<div class="twelvecol">
<?php     

			$a = new Area('Main');
			$a->display($c);			
			?>


</div>

</div>
</div>



<?php     $this->inc('elements/footer.php'); ?>