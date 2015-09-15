// Place your Spring DSL code here
beans = {
	
	httpClient(wslite.http.HTTPClient) {
		connectTimeout = 5000
		readTimeout = 10000
		useCaches = false
		followRedirects = false
		sslTrustAllCerts = true
	}
	
	restClient(wslite.rest.RESTClient) {
		url = "http://smsgateway.ca/services"
		//httpClient = ref('httpClient')
	}
}
