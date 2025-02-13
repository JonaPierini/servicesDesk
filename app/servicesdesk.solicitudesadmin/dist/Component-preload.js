//@ui5-bundle servicesdesk/solicitudesadmin/Component-preload.js
sap.ui.require.preload({
	"servicesdesk/solicitudesadmin/Component.js":function(){
sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("servicesdesk.solicitudesadmin.Component",{metadata:{manifest:"json"}})});
},
	"servicesdesk/solicitudesadmin/i18n/i18n.properties":'# This is the resource bundle for servicesdesk.solicitudesadmin\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=SolicitudesAdmin\n\n#YDES: Application description\nappDescription=SolicitudesAdmin\n\n#XFLD,48\nflpTitle=SolicitudesAdmin\n',
	"servicesdesk/solicitudesadmin/manifest.json":'{"_version":"1.60.0","sap.app":{"id":"servicesdesk.solicitudesadmin","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.16.3","toolsId":"2131f5b2-bcca-4b11-8d16-40aff7877f27"},"dataSources":{"mainService":{"uri":"service/ServicesDeskSvcs/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"servicesdesksolicitudesadmin-display":{"semanticObject":"servicesdesksolicitudesadmin","action":"display","title":"{{flpTitle}}","signature":{"parameters":{},"additionalParameters":"allowed"}},"servicesdesk.tiposolicitud-display":{"semanticObject":"servicesdesktiposolicitud","action":"display","signature":{"parameters":{},"additionalParameters":"allowed"}}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.120.13","libs":{"sap.m":{},"sap.ui.core":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"servicesdesk.solicitudesadmin.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"SolicitudesAdminList","target":"SolicitudesAdminList"},{"pattern":"SolicitudesAdmin({key}):?query:","name":"SolicitudesAdminObjectPage","target":"SolicitudesAdminObjectPage"},{"pattern":"SolicitudesAdmin({key})/comunicaciones({key2}):?query:","name":"SolicitudesAdmin_comunicacionesObjectPage","target":"SolicitudesAdmin_comunicacionesObjectPage"}],"targets":{"SolicitudesAdminList":{"type":"Component","id":"SolicitudesAdminList","name":"sap.fe.templates.ListReport","options":{"settings":{"contextPath":"/SolicitudesAdmin","variantManagement":"Page","navigation":{"SolicitudesAdmin":{"detail":{"route":"SolicitudesAdminObjectPage"}}},"controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"type":"ResponsiveTable"}}},"initialLoad":"Enabled"}}},"SolicitudesAdminObjectPage":{"type":"Component","id":"SolicitudesAdminObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/SolicitudesAdmin","navigation":{"comunicaciones":{"detail":{"route":"SolicitudesAdmin_comunicacionesObjectPage"}}}}}},"SolicitudesAdmin_comunicacionesObjectPage":{"type":"Component","id":"SolicitudesAdmin_comunicacionesObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/SolicitudesAdmin/comunicaciones"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"ServicesDesk.service"}}'
});
//# sourceMappingURL=Component-preload.js.map
