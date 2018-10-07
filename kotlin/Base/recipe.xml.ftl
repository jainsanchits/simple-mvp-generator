<?xml version="1.0"?>
<recipe>
 
  <instantiate from="src/app_package/base/BasePresenter.kt.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/BasePresenter.kt" />                
	<instantiate from="src/app_package/base/ErrorPresenter.kt.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/ErrorPresenter.kt" />                
	<instantiate from="src/app_package/base/IContext.kt.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/IContext.kt" />                 
  <instantiate from="src/app_package/base/IShowError.kt.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/IShowError.kt" />      
</recipe>