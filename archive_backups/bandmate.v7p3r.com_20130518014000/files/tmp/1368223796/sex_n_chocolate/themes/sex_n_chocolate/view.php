<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<?php    $this->inc('elements/header.php'); ?>

	<div class="sixteen columns" id="singlepages">
		<div class="content">
		<?php  print $innerContent; ?>
		<?php   $a = new Area('Main'); $a->display($c); ?>
		</div>
	</div>

<?php    $this->inc('elements/footer.php'); ?>