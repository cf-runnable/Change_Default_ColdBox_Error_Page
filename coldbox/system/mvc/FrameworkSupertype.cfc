﻿/**********************************************************************************Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corpwww.coldbox.org | www.luismajano.com | www.ortussolutions.com********************************************************************************Author 	    :	Luis MajanoDescription :	Manage Event Handlers*/component serializable="false" accessors="true"{		// Controller Reference	property name="controller";		/**	* Get a model object	*/	function getModel(name, dsl, initArguments={}){		return controller.getWirebox().getInstance(argumentCollection=arguments);
	}		/**	* Populate a model object from the request Collection	*/	function populateModel(required model, scope="", boolean trustedSetter=false, include="", exclude="", boolean ignoreEmpty=false){		// Get memento		arguments.memento = controller.getContext().getCollection();		// Do we have a model or name		if( isSimpleValue( arguments.model ) ){			arguments.target = getModel( model );		}		else{			arguments.target = arguments.model;		}		// populate		return wirebox.getObjectPopulator().populateFromStruct(argumentCollection=arguments);	}		/**	* Rendering all kinds of views	*/	function renderView(required view, struct args={}, collection, collectionAs){		return controller.getRenderer().renderView(argumentCollection=arguments);	}		/**	* Rendering all kinds of external views	*/	function renderExternalView(required view, struct args={}){		return controller.getRenderer().renderExternalView(argumentCollection=arguments);	}		/**	* Rendering layouts	*/	function renderLayout(layout, view, args){		return controller.getRenderer().renderLayout(argumentCollection=arguments);	}			/**	* Get all the settings structure	*/	function getSettingStructure(boolean fwSetting=false, boolean deepCopyFlag=false){		return controller.getSettingStructure(argumentCollection=arguments);	}		/**	* Get a setting from the system	*/	function getSetting(required name, boolean fwSetting=false, defaultValue){		return controller.getSetting(argumentCollection=arguments);	}		/**	* Verify a setting from the system	*/	boolean function settingExists(required name, boolean fwSetting=false){		return controller.settingExists(argumentCollection=arguments);	}		/**	* Set a new setting in the system	*/	boolean function setSetting(required name, required value){		return controller.setSetting(argumentCollection=arguments);	}		/**	* Relocate the user to another location	*/	function setNextEvent(event, URL, URI, queryString, boolean addToken, boolean ssl, baseURL, boolean postProcessExempt, numeric statusCode){		controller.setNextEvent(argumentCollection=arguments);
	}		/**	* Run an internal ColdBox event	*/	function runEvent(event, boolean postProcessExempt=false, boolean private="false", boolean defaultEvent="false", struct eventArgument={}){		controller.setNextEvent(argumentCollection=arguments);	}	}