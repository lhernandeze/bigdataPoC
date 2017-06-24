<!-- BEGIN PAGE CONTENT INNER -->
<div class="container">

	<h2>Send a JMS Message</h2>
	<!-- BEGIN FORM -->
	<form name="JMSFormMsg" action="sendMessage.do" method="post"> <!-- action="sendMessage.do" method="post" -->

		<table id="headers">
			<thead>
				<tr>
					<th colspan="4">Message Header</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td><label for="JMSDestination">Destination</label></td>
					<td><input type="text" name="JMSDestination" value="foo.bar" /></td>
					<td><label for="queue">Queue or Topic</label></td>
					<td><select name="JMSDestinationType">

							<option value="queue">Queue</option>
							<option value="topic">Topic</option>

					</select></td>
				</tr>
				<tr>
					<td><label for="JMSCorrelationID">Correlation ID</label></td>
					<td><input type="text" name="JMSCorrelationID" value="" /></td>
					<td><label for="JMSPersistent">Persistent Delivery</label></td>
					<td><input type="checkbox" name="JMSPersistent" value="true" /></td>
				</tr>
				<tr>
					<td><label for="JMSReplyTo">Reply To</label></td>
					<td><input type="text" name="JMSReplyTo" value="" /></td>
					<td><label for="JMSPriority">Priority</label></td>
					<td><input type="text" name="JMSPriority" value="" /></td>
				</tr>
				<tr>
					<td><label for="JMSType">Type</label></td>
					<td><input type="text" name="JMSType" value="" /></td>
					<td><label for="JMSTimeToLive">Time to live</label></td>
					<td><input type="text" name="JMSTimeToLive" value="" /></td>
				</tr>
				<tr>
					<td><label for="JMSXGroupID">Message Group</label></td>
					<td><input type="text" name="JMSXGroupID" value="" /></td>
					<td><label for="JMSXGroupSeq">Message Group Sequence
							Number</label></td>
					<td><input type="text" name="JMSXGroupSeq" value="" /></td>
				</tr>
				<tr>
					<td><label for="AMQ_SCHEDULED_DELAY">delay(ms)</label></td>
					<td><input type="text" name="AMQ_SCHEDULED_DELAY" value="" />

					</td>
					<td><label for="AMQ_SCHEDULED_PERIOD">Time(ms) to wait
							before scheduling again</label></td>
					<td><input type="text" name="AMQ_SCHEDULED_PERIOD" value="" /></td>
				</tr>
				<tr>
					<td><label for="AMQ_SCHEDULED_REPEAT">Number of
							repeats</label></td>
					<td><input type="text" name="AMQ_SCHEDULED_REPEAT" value="" /></td>
					<td><label for="AMQ_SCHEDULED_CRON">Use a CRON string
							for scheduling</label></td>
					<td><input type="text" name="AMQ_SCHEDULED_CRON" value="" />

					</td>
				</tr>
				<tr>
					<td><label for="JMSMessageCount">Number of messages to
							send</label></td>
					<td><input type="text" name="JMSMessageCount" value="1" /></td>
					<td><label for="JMSMessageCountHeader">Header to store
							the counter</label></td>
					<td><input type="text" name="JMSMessageCountHeader"
						value="JMSXMessageCounter" /></td>
				</tr>
				<tr>
					<th colspan="4"><label for="text">Message body</label></th>
				</tr>
				<tr>
					<td colspan="4"><textarea name="JMSText" rows="5" cols="80" placeholder="Enter some text here for the message body..."></textarea>
					</td>
				</tr>
			</tbody>
		</table>

		<div id="app">
			<header>MessageProperties</header>
			<div id="main">
				<div id="add-task">
					<label for="new-task-property">Add Property Key</label> <input type="text"
						id="new-task-property" title="Enter a Property Key"
						placeholder="Enter a property key">
					<label for="new-task-name">Add Property Value</label> <input type="text"
						id="new-task-name" title="Enter a Property Value"
						placeholder="Enter a property value">
				</div>
				<ul id="task-list">
				</ul>
			</div>
			<footer></footer>
		</div>
		
		<div id="templates" class="hidden">
			<ul id="task-template">
				<li class="task">
					<div class="tools">
						<!-- 
						<button class="delete" title="Delete">X</button>
						<button class="move-up" title="Move Up">^</button>
						<button class="move-dw" title="Move Down">v</button>
						-->
					</div> <span class="task-name"></span>
					<input type="text" class="task-prop hidden" value="default" name="" />
					<input type="text" class="task-name hidden" value="default" name="" />
				</li>
			</ul>
		</div>

		<table id="action">
			<tbody>
				<tr>
					<td colspan="4"><br></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<input type="submit" value="Send" />
						<input type="reset" />
					</td>
				</tr>
			</tbody>
		</table>

	</form>
	<!-- END FORM -->

	<!-- END PAGE CONTENT INNER -->
</div>
<!--  Div Container -->