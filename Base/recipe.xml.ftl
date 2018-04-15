<?xml version="1.0"?>
<recipe>
 
  <instantiate from="src/app_package/base/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/BasePresenter.java" />                
	<instantiate from="src/app_package/base/ErrorPresenter.java.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/ErrorPresenter.java" />                
	<instantiate from="src/app_package/base/IContext.java.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/IContext.java" />                
	<instantiate from="src/app_package/base/IRecyclerBaseViewToPresenter.java.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/IRecyclerBaseViewToPresenter.java" />    
  <instantiate from="src/app_package/base/IShowError.java.ftl"
                   to="${escapeXmlAttribute(baseOut)}/base/IShowError.java" />      
</recipe>