<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Dashboard</title>
		</head>
	<body>
  		<div class="body">
  		
  			<g:render template="/shared/flashMessages" />
  
  			<g:form>
  				
  				<fieldset class="form">
  					<label>Account Key:</label>
  					<g:textField name="accountKey" value=""/>
  				</fieldset>
  			
	  			<table>
	        		<tr>
		                <th>SMS Gateway Command</th>
		                <th colspan="2">Fields</th>
		                <th>Submit</th>
		            </tr>
		            <tr>
				        <td>Basic Send Operation</td>
				        <td>
				        	<label>Phone Number:</label>
							<label>Message:</label>
						</td>
						<td>
							<g:textField name="phoneNumber" value=""/>
							<g:textField name="sendMessageText" value=""/>
						</td>
				        <td>
				        	<g:actionSubmit action="basicSendOperationWithReference" value="Submit" />
				        </td>
				   	</tr>
		            <tr>
				        <td>Check Outgoing Message Credits</td>
				        <td colspan="2"></td>
				        <td>
				        	<g:actionSubmit action="checkOutgoingMessageCredits" value="Submit" />
				        </td>
				   	</tr>
				   	<tr>
				        <td>Check Pending Message Count</td>
				        <td colspan="2"></td>
				        <td>
				        	<g:actionSubmit action="checkPendingMessageCount" value="Submit" />
				        </td>
				   	</tr>
				   	<tr>
				        <td>Get Recent Incoming Messages</td>
				        <td>
				        	<label>Number of Messages:</label>
						</td>
						<td>
							<g:textField name="numberOfMessages" value=""/>
						</td>
				        <td>
				        	<g:actionSubmit action="getRecentIncomingMessages" value="Submit" />
				        </td>
				   	</tr>
				   	
				</table>
			</g:form> 	
  		</div>
	</body>
</html>