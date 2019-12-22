<?php    defined('C5_EXECUTE') or die(_("Access Denied.")); ?>
	<!-- Start Footer -->
	<div class="sixteen columns">
		<div id="footer">
			<?php   $a = new Area('Footer'); $a->display($c); ?>
			<p>&copy; <?php   echo date('Y')?> <?php   echo SITE?>. <?php   echo t('All rights reserved.')?> | <?php   echo t('Designed by')?> <a href="http://www.growthcurve.biz" title="<?php   echo t('Growth Curve Themes')?>">Growth Curve</a>.&nbsp;
			<?php   
			$u = new User();
			if ($u->isRegistered()) { ?>
				<?php    
				if (Config::get("ENABLE_USER_PROFILES")) {
					$userName = '<a href="' . $this->url('/profile') . '">' . $u->getUserName() . '</a>';
				} else {
					$userName = $u->getUserName();
				}
				?>
				|&nbsp;<?php   echo t('Logged in as <b>%s</b>.', $userName)?> <a href="<?php   echo $this->url('/login', 'logout')?>"><?php   echo t('Sign Out')?></a>
			<?php    } else { ?>
				<a href="<?php   echo $this->url('/login')?>"><?php   echo t('Sign In')?></a></p>
			<?php    } ?>
			</p>
		</div>
	</div><!-- End Footer -->
</div><!-- End container -->
<!-- Activate FitVids.js -->
<script>
	//$(".columns").fitVids();
	$(".container").fitVids();
</script>
<?php   Loader::element('footer_required'); ?>
</body>
</html>