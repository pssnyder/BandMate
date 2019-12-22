<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<?php    $this->inc('elements/header.php'); ?>
	
	<div class="one-third column">
		<div class="content">
		<?php   $a = new Area('Featured Left'); $a->display($c); ?>
		</div>
	</div>
	<div class="one-third column">
		<div class="content">
		<?php   $a = new Area('Featured Middle'); $a->display($c); ?>
		</div>
	</div>
	<div class="one-third column">
		<div class="content">
		<?php   $a = new Area('Featured Right'); $a->display($c); ?>
		</div>
	</div>
	
	<div class="sixteen columns">
		<div class="content">
		<?php   $a = new Area('Main'); $a->display($c); ?>
		</div>
	</div>

<?php    $this->inc('elements/footer.php'); ?>