package mobilemoney.core

import mobilemoney.services.GatewayService

class DashboardController {
	
	GatewayService GatewayService
	
	//-----------------------------------------------------
	// Title: Dashboard
	//-----------------------------------------------------
	def dashboard = {
	}
	
	//-----------------------------------------------------
	// Title: CheckOutgoingMessageCredits
	//-----------------------------------------------------
	def checkOutgoingMessageCredits = {
		
		if (params.accountKey) {
			
			def smsResponse = GatewayService.checkOutgoingMessageCredits(params.accountKey)
			flash.message = "Outgoing Message Credits = " + smsResponse
		} else {
		
			flash.error = "Invalid account key"
		}
		
		render(view: "dashboard")
	}
	
	//-----------------------------------------------------
	// Title: CheckPendingMessageCount
	//-----------------------------------------------------
	def checkPendingMessageCount = {
		
		if (params.accountKey) {
			
			def smsResponse = GatewayService.checkPendingMessageCount(params.accountKey)
			flash.message = "Pending Messages = " + smsResponse
		} else {
		
			flash.error = "Invalid account key"
		}
		
		render(view: "dashboard")
	}
	
	//-----------------------------------------------------
	// Title: SendMessage
	//-----------------------------------------------------
	def sendMessage = {
		
		if (params.accountKey && params.phoneNumber && params.sendMessageText) {
			
			def smsResponse = GatewayService.sendMessage(params.accountKey, params.phoneNumber, params.sendMessageText)
			flash.message = "Send Message Result = " + smsResponse
		} else {
		
			flash.error = "Invalid inputs"
		}
		
		render(view: "dashboard")
	}
}
