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
	// Title: BasicSendOperationWithReference
	//-----------------------------------------------------
	def basicSendOperationWithReference = {
		
		if (params.accountKey && params.phoneNumber && params.sendMessageText) {
			
			def smsResponse = GatewayService.basicSendOperationWithReference(params.accountKey, params.phoneNumber, params.sendMessageText)
			flash.message = "Send Message Result = " + smsResponse
		} else {
		
			flash.error = "Invalid inputs"
		}
		
		render(view: "dashboard")
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
	// Title: GetRecentIncomingMessages
	//-----------------------------------------------------
	def getRecentIncomingMessages = {
		
		if (params.accountKey && params.numberOfMessages) {
			
			def smsResponse = GatewayService.getRecentIncomingMessages(params.accountKey, params.numberOfMessages)
			flash.message = "Array of incoming messages: " + smsResponse
		} else {
		
			flash.error = "Invalid inputs"
		}
		
		render(view: "dashboard")
	}
}
