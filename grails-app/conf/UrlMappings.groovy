class UrlMappings
{

    static mappings = {

        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/"         (controller: "index")
        "/grails"   (view: "/infos")
        "500"       (view: '/error')

    }
}
