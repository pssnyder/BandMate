<?php    

defined('C5_EXECUTE') or die(_("Access Denied."));

class SexNChocolatePackage extends Package {

	protected $pkgHandle = 'sex_n_chocolate';
	protected $appVersionRequired = '5.4.2.1';
	protected $pkgVersion = '1.0';
	
	public function getPackageDescription() {
		return t("A sexy chocolate theme.");
	}
	
	public function getPackageName() {
		return t("Sex 'n Chocolate");
	}
	
	public function install() {
		$pkg = parent::install();
		
		// install block		
		PageTheme::add('sex_n_chocolate', $pkg);
		// install blocks
		BlockType::installBlockTypeFromPackage('sexy_cta', $pkg);		
	}

}