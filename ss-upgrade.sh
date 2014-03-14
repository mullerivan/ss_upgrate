#!/bin/bash
#
# ss-upgrader.sh
#
# INTRODUCTION
#
# There are some threads on the SS forums that describe the techdocs for upgrading a 2.4 site to 3.x as being too technical. Mainly from content authors who
# also happen to be site maintainers - they are not coders. 
# The aim of this script is to therefore to automate - in as much as this is possible in a user-configured, open-source software project - to help those new to
# SS3 upgrade from 2.x as smoothly as possible.
#
# PREREQUISITES
#
# 1). Basic knowledge of command-line usage on UNIX-like systems, and access to such a system where the SilverStripe site due for upgrade, is hosted. Sorry no Windows right now although my master will make it work there if you pay him beer money.
# 2). Assumes that the latest version 'cms' and 'framework' projects have been copied across to their correct locations from github or by using composer
# 
# CAVEATS
#
# There will almost _always_ be _something_ outside of this script, that will need manual modification by a developer.
#
# A ScienceNinja Project for SilverStripe
#
# Stig Lindqvist stig@silverstripe.com
# Russell Michell russell@silverstripe.com
#
# 1). TODO Create a directory exclusions array to implement for each call to `find`
# 2). TODO Make all straightforward find/replace_php items entries in an array to ease the addition of further items for replace_phpment
# 3). TODO Add platform check. sed on Darwin (OS X) seems to require the double quotes. Linux (Fedora and Debian) complain if left in
# 4). TODO: Add the rest of the suggestions from here as find/replace_phpments: http://doc.silverstripe.org/framework/en/trunk/changelogs/3.0.0
# 5). TODO: Complete functionality to find/replace_php logic within the user-specific dir: $MYSITE e.g. 'sapphire' to 'framework' (Or used FRAMEWORK_DIR constant)
# 6). TODO: grep "cms" and "framework" dirs for "@deprecated 3.0" and manually create a new array of "warnings". Add a new flag -w (Warnings) that reveals to 
# users that there are items flagged for their attention (cannot be auto-replace_phpd). Diff this array with the array from 2). so there are no repetitions
#

DRYRUN="0"
MYSITEDIR="mysite"
MYSITEONLY="0"

# Parse some inputs
while getopts "dm:o" OPT; do
	case $OPT in
	d)
		DRYRUN="1"
		echo "Running in dry-run mode..."
	;;
	m)
		MYSITEDIR="$OPTARG"
		echo "Customisations directory: $MYSITE"
	;;
	o)
		MYSITEONLY="1"
		echo "Restricting modifications to contents of $MYSITEDIR directory only"
	;;
	\?)
		echo "Invalid option: -$OPTARG" >&2
		exit 1
	;;
esac
done

#
# Replace old stuff with new stuff
#

function replace_php {
	MSG="Replacing: '\"'$1'\"' with '\"'$2'\"'"
	if [ $DRYRUN == "1" ]; then
		echo "[.php] $MSG"
	else
		echo "[.php] $MSG"
		if [ $MYSITEONLY == "1" ]; then
			find ./$MYSITEDIR \( -path './framework' -o -path './cms' -o -path './.git' \) -prune -o -name '*.php' -exec grep -l "$1" {} \; | xargs sed -i "" 's/'"$1"'/'"$2"'/g'
		else
			find . \( -path './framework' -o -path './cms' -o -path './.git' \) -prune -o -name '*.php' -exec grep -l "$1" {} \; | xargs sed -i "" 's/'"$1"'/'"$2"'/g'
		fi
	fi
}

function replace_ss {
	MSG="Replacing: '\"'$1'\"' with '\"'$2'\"'"
	if [ $DRYRUN == "1" ]; then
		echo "[.ss] $MSG"
	else
		echo "[.ss] $MSG"
		if [ $MYSITEONLY == "1" ]; then
			find ./$MYSITEDIR \( -path './framework' -o -path './cms' -o -path './.git' \) -prune -o -name '*.ss' -exec grep -l "$1" {} \; | xargs sed -i "" 's/'"$1"'/'"$2"'/g'
		else
			find . \( -path './framework' -o -path './cms' -o -path './.git' \) -prune -o -name '*.ss' -exec grep -l "$1" {} \; | xargs sed -i "" 's/'"$1"'/'"$2"'/g'
		fi
	fi
}

replace_php 'Director::currentPage(' 'Director::get_current_page('
replace_php 'Member::currentMember(' 'Member::currentUser('
replace_php 'new DataObjectSet' 'new ArrayList'
replace_php 'new FieldSet' 'new FieldList'
replace_php 'DBField::create(' 'DBField::create_field('
replace_php 'Director::URLParam(' 'Controller::curr()->getRequest()->param('
replace_php 'Director::urlParam(' 'Controller::curr()->getRequest()->param('
replace_php 'Database::alteration_message(' 'DB::alteration_message('
replace_php 'Director::isSSL()' "(Director::protocol()===\'https:\/\/\')"
replace_php 'extends SSReport' 'extends SS_Report'
replace_php 'function getFrontEndFields()' 'function getFrontEndFields($params = null)'
replace_php 'function updateCMSFields(&$fields)' 'function updateCMSFields($fields)'
replace_php 'function Breadcrumbs()' 'function Breadcrumbs($maxDepth = 20, $unlinked = false, $stopAtPageType = false, $showHidden = false)'
replace_php 'extends DataObjectDecorator' 'extends DataExtension'
replace_php 'extends SiteTreeDecorator' 'extends SiteTreeExtension'
replace_php 'function extraStatics()' 'function extraStatics($class = null, $extension = null)'
replace_php 'function updateCMSFields($fields)' 'function updateCMSFields(FieldList $fields)'
replace_php 'function updateCMSFields(&$fields)' 'function updateCMSFields(FieldList $fields)'
replace_php 'function updateCMSFields(FieldSet &$fields)' 'function updateCMSFields(FieldList $fields)'
replace_php 'function canEdit()' 'function canEdit($member = null)'
replace_php 'function canView()' 'function canView($member = null)'
replace_php 'function canCreate()' 'function canCreate($member = null)'
replace_php 'function canDelete()' 'function canDelete($member = null)'
replace_php 'function Field()' 'function Field($properties = array())'
replace_php 'function sendPlain()' 'function sendPlain($messageID = null)'
replace_php 'function send()' 'function send($messageID = null)'
replace_php 'function apply(SQLQuery' 'function apply(DataQuery'
replace_php 'function updateCMSFields(FieldSet' 'function updateCMSFields(FieldList'
replace_php 'function extraStatics()' 'function extraStatics($class = null, $extension = null)'
replace_php 'Form::disable_all_security_tokens' 'SecurityToken::disable'
# SS3 uses Root.<xx> 2.x uses Root.Content.<xx>
#replace_php 'Root.Content.' 'Root.'
replace_php 'SAPPHIRE_DIR' 'FRAMEWORK_DIR'
replace_php 'SAPPHIRE_PATH' 'FRAMEWORK_PATH'
replace_php 'SAPPHIRE_ADMIN_DIR' 'FRAMEWORK_ADMIN_DIR'
replace_php 'SAPPHIRE_ADMIN_PATH' 'FRAMEWORK_ADMIN_PATH'

# This is dangerous becuase custom code might call the old statics from a non page/page-controller
#replace_php 'Director::redirect(' 'Controller::redirect('
#replace_php 'Director::redirectBack(' 'Controller::redirectBack('

replace_ss 'sapphire\/' 'framework\/'