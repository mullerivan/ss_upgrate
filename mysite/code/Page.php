<?php

class Page extends SiteTree
{

    private static $db = array(
        'SidebarContent' => 'HTMLText'
    );


    private static $has_one = array();


    function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Sidebar', new HtmlEditorField('SidebarContent', 'SidebarContent'));
        return $fields;
    }

}

class Page_Controller extends ContentController
{

    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array('doProductInquiry');
    public function init()
    {
        parent::init();

        // Note: you should use SS template require tags inside your templates
        // instead of putting Requirements calls here.  However these are
        // included so that our older themes still work
        Requirements::themedCSS('reset');
        Requirements::themedCSS('layout');
        Requirements::themedCSS('typography');
        Requirements::themedCSS('form');
        Requirements::themedCSS('signetix');


        Requirements::javascript(THEMES_DIR . '/mainline/js/jquery-1.11.0.min.js');
        Requirements::javascript(THEMES_DIR . '/mainline/js/lightbox-2.6.min.js');
        Requirements::css(THEMES_DIR . '/mainline/css/lightbox.css');


//        Requirements::javascript(THEMES_DIR . '/mainline/js/placeholders.min.js');

        Requirements::themedCSS('print', 'null', 'print');
	      #slider
        Requirements::css(THEMES_DIR . '/mainline/cactus-slider/cactus-slider.css');
        Requirements::javascript(THEMES_DIR . '/mainline/cactus-slider/cactus-slider.js');
	      #endSlider
	      #lightbox


	      #endLightbox




    }

    public function ProductInquireForm()
    {
        $Name = new TextField('Name');
        $Name->setAttribute('placeholder', 'Name');
        $Email=new EmailField('Email');
        $Email->setAttribute('placeholder', 'Email');
        $Phone= new TextField('Phone');
        $Phone->setAttribute('placeholder', 'Phone');
        $Questions = new TextareaField('Questions');
        $Questions->setAttribute('placeholder', 'Your Question here');
        // Create fields
        $fields = new FieldList($Name, $Email, $Phone,$Questions);

        // Create actions
        $actions = new FieldList(
            new FormAction('doProductInquiry', 'Submit')
        );
        $validations =  new RequiredFields( // validation
            'Name', 'Email','Questions'
        );

        return new Form($this, 'doProductInquiry', $fields, $actions,$validations );
    }


    function doProductInquiry($form)
    {

        $results = $form->postVars();

        $from = 'enquiry@mainlinecommercials.co.nz';
        $to = 'sales@mainlinecommercials.co.nz';
        #$subject = 'enquiry about ' . $results['machine'] . ' (truck)';
        $subject = 'enquiry about '  . ' (truck)';
        $body = 'Name: ' . $results['Name'] . "\r\n";
        $body .= 'Email: ' . $results['Email'] . "\r\n";
        $body .= 'Phone: ' . $results['Phone'] . "\r\n" . "\r\n";
        $body .= 'Questions: ' . "\r\n" . $results['Questions'] . "\r\n";

        $email = new Email($from, $to, $subject, $body);
        $email->sendPlain();
        Controller::redirect('thanks-for-your-enquiry/');
    }
}
