<?xml version="1.0"?>
<recipe>
 
    <instantiate from="src/app_package/presenter/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.java" />
    <instantiate from="src/app_package/model/Model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${className}Model.java" />
    <instantiate from="src/app_package/view/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${className}Activity.java" />
    <instantiate from="src/app_package/Main.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Main.java" />   

    <open file="${srcOut}/presenter/${className}Presenter.java"/>
    
</recipe>