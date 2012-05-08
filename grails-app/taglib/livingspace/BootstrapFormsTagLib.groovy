package livingspace

class BootstrapFormsTagLib
{

    static namespace = "bootstrap"

    def controlGroup = { attr, body ->
        out << render(template: 'controlGroup', contextPath: '/tags',
                model: [renderChildren: body, bean: attr.bean, name: attr.name, label: attr.label])
    }


}
