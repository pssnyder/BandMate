<?php          

defined('C5_EXECUTE') or die(_("Access Denied."));

class RespostaFreePackagePackage extends Package
{

	protected $pkgHandle = 'resposta_free_package';
	protected $appVersionRequired = '5.5.0';
	protected $pkgVersion = '1.1';
	
	
	
	public function getPackageDescription()
	{
		return t("Resposta - Responsive Framework for Concrete5");
	}

	public function getPackageName()
	{
		return t("Resposta Framework");
	}
	
	
	public function install()
	{
		$pkg = parent::install();
		
		Loader::model('collection_types');
		Loader::model('single_page');
		Loader::model('collection_attributes');
		Loader::model('file_set');
		Loader::model('attribute/categories/collection');
		Loader::model('attribute/categories/file');
		
		
		
		 $p1 = SinglePage::add('/dashboard/resposta-framework/',$pkg);
		 $p1->update(array('cName'=>"Resposta Framework", 'cDescription'=>"Framework  Documentation"));
		
		
		// setup user attributes 
		 $select = AttributeType::getByHandle('select'); // select attribute
		 $image_file = AttributeType::getByHandle('image_file'); //image attribute
		 $bool = AttributeType::getByHandle('boolean'); //checkbox
		 $number = AttributeType::getByHandle('number'); // number attribute
		 $textarea = AttributeType::getByHandle('textarea'); // number attribute
		 $text = AttributeType::getByHandle('text'); // text attribute
		 
		
		
		  $eaku = AttributeKeyCategory::getByHandle('collection');
		  $eaku->setAllowAttributeSets(AttributeKeyCategory::ASET_ALLOW_SINGLE);
		  $filterableSet = $eaku->addSet('framework_filterable',t('Filterable'),$pkg);
		
		
		// install collection attributes
		CollectionAttributeKey::add($image_file,array('akHandle'=>'filterable_image','akName'=>t('Filterable Image'),'akIsSearchable'=>false),$pkg)->setAttributeSet($filterableSet);
		
		 CollectionAttributeKey::add($select,array('akHandle' => 'filterable_categories', 'akName' => t('Filterable Categories'), 'akIsSearchable' => false), $pkg)->setAttributeSet($filterableSet);
		
		
		
		
		BlockType::installBlockTypeFromPackage('resposta_flex_slider', $pkg);
		
        // install theme
		PageTheme::add('blanktheme', $pkg);
				
		
        
    }
    private function installPageLinkAttribute(&$pkg) {
    	$at = AttributeType::getByHandle('page_selector');
    	if ($at && intval($at->getAttributeTypeID())) {
    		//Associate with "file" category (if not done alrady)
    		Loader::model('attribute/categories/collection');
    		$akc = AttributeKeyCategory::getByHandle('file');
    		$sql = 'SELECT COUNT(*) FROM AttributeTypeCategories WHERE atID = ? AND akCategoryID = ?';
    		$vals = array($at->getAttributeTypeID(), $akc->akCategoryID);
    		$existsInCategory = Loader::db()->GetOne($sql, $vals);
    		if (!$existsInCategory) {
    			$akc->associateAttributeKeyType($at);
    		}
    		
    		//Install the link-to-page attribute (if not done already)
    		Loader::model('file_attributes');
    		$akHandle = 'gallery_link_to_cid';
    		$akGalleryLinkToCID = FileAttributeKey::getByHandle($akHandle);
    		if (!$akGalleryLinkToCID || !intval($akGalleryLinkToCID->getAttributeKeyID())) {
    			$akGalleryLinkToCID = FileAttributeKey::add(
    				$at,
    				array(
    					'akHandle' => $akHandle,
    					'akName' => t('Gallery Link To Page'),
    				),
    				$pkg
    			);
    		}
    	}
    }
	
	
}