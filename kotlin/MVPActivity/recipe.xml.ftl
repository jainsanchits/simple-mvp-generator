<?xml version="1.0"?>
<recipe>
 
    <instantiate from="src/app_package/presenter/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.kt" />
    <instantiate from="src/app_package/model/Model.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/model/${className}Model.kt" />
    <instantiate from="src/app_package/view/Activity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${className}Activity.kt" />
    <instantiate from="src/app_package/Main.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Main.kt" />   

    <open file="${srcOut}/presenter/${className}Presenter.kt"/>
    
</recipe>