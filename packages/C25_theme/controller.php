<?php   

defined('C5_EXECUTE') or die(_("Access Denied."));

class C25ThemePackage extends Package {

	protected $pkgHandle = 'C25_theme';
	protected $appVersionRequired = '5.3.0';
	protected $pkgVersion = '1.0';
	
	public function getPackageDescription() {
		return t("Installs C25 theme.");
	}
	
	public function getPackageName() {
		return t("C25 Theme");
	}
	
	public function install() {
		$pkg = parent::install();
		PageTheme::add('C25', $pkg);		
	}
	
}