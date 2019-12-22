<?php  defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
<?php  $this->inc('elements/header.php'); ?>
	<div id="page">
		<!-- start content -->
		<div id="content">
			<?php 
print $innerContent;
			?>
		</div>
		<!-- end content -->
		<!-- start sidebar -->
		<div id="sidebar">
			<?php 
				$ah = new Area('Header');
				$ah->display($c);
			?>
			<ul>
				<?php 
					$ah = new Area('sidebar');
					$ah->display($c);
				?>
			</ul>
			<?php 
				$ah = new Area('Footer');
				$ah->display($c);
			?>
		</div>
		<!-- end sidebar -->
		<br style="clear: both;" />
	</div>
</div>
<!-- end page -->
<!-- start footer -->

<?php   $this->inc('elements/footer.php'); ?>