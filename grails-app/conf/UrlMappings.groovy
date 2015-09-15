class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

		// Homepage
		"/"(controller: "dashboard", action: "dashboard")
		//"/"(view:"/index")
		
		// Error page is the /error page
        "500"(view:'/error')
	}
}
