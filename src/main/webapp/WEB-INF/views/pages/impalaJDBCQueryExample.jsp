<!-- BEGIN PAGE CONTENT INNER -->
<div class="container">

	<h2>Execute Query - Big Data</h2>
	<!-- BEGIN FORM -->
	<form name="SQLForm" action="impalaQuery.do" method="post">

		<table id="headers">
			<thead>
				<tr>
					<th colspan="4">Using Impala JDBC Driver</th>
				</tr>
				<tr></tr>
			</thead>

			<tbody>
				<tr>
					<th colspan="4"><label for="text">Type your SQL Sentence</label></th>
				</tr>
				<tr>
					<td colspan="4"><textarea name="SQLQuery" rows="10" cols="80" placeholder="Enter SQL Query for Impala..."></textarea>
					</td>
				</tr>
				<tr>
					<td><label for="limitRow">Rows Limit</label></td>
					<td><select name="limit">
							<option value="10" selected="selected">10 - default</option>
							<option value="20">20</option>
							<option value="50">50</option>
							<option value="100">100</option>
							<option value="150">150</option>
							<option value="200">200</option>
						</select>
					</td>
				</tr>
			</tbody>
		</table>
		

		<table id="action">
			<tbody>
				<tr>
					<td colspan="4"><br></td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<input type="submit" value="Execute Impala SQL" />
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