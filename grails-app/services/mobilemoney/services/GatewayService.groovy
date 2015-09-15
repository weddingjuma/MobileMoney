package mobilemoney.services

import grails.transaction.Transactional
import wslite.rest.*

@Transactional
class GatewayService {

	def restClient
	
	// Operation URL types
	def operationAccountUrl = "/account.svc/"
	def operationMessageUrl = "/message.svc/"
	def operationIncomingUrl = "/incoming.svc/"
	
	
	//-----------------------------------------------------
	// Title: CheckOutgoingMessageCredits
	//-----------------------------------------------------
	def checkOutgoingMessageCredits(String accountKey) {
		
		def path = operationAccountUrl + accountKey + "/RemainingMessageCount"
		
		def gatewayResponse = restClient.get(path: path)
		
		return gatewayResponse.json
	}
	
	
	//-----------------------------------------------------
	// Title: CheckPendingMessageCount
	//-----------------------------------------------------
	def checkPendingMessageCount(String accountKey) {
		
		def path = operationAccountUrl + accountKey + "/PendingMessageCount"
		
		def gatewayResponse = restClient.get(path: path)
		
		return gatewayResponse.json
	}
	
	
	//-----------------------------------------------------
	// Title: SendMessage
	//-----------------------------------------------------
	def sendMessage(String accountKey, String phoneNumber, String sendMessageText) {
		
		def path = operationMessageUrl + accountKey + "/" + phoneNumber

		def gatewayResponse = restClient.post(path: path) {
			type ContentType.JSON
			json MessageBody: sendMessageText, Reference: "Ref 12345"
		}

		if (gatewayResponse.json.SendMessageWithReferenceResult) {
			return gatewayResponse.json.SendMessageWithReferenceResult
		} else {
			return "ERROR"
		}
	}
}
