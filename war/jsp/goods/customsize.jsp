<div class="alert_thing_box" style="position: absolute;display:none;top: 100px;left: 200px" id="alert_thing_box_customizedsize">
	<script type="text/javascript">
		function changeunit(value) {
			if (value == 'in')
				value = 'inch';

			for ( var i = 1; i < customnum; i++) {
				if ($('unit' + i)) {
					if (i == 2
							&& value == "cm"
							&& ($('unit' + i).innerHTML == "kg" || $('unit' + i).innerHTML == 'lb')) {
						$('unit' + i).innerHTML = 'kg';
					} else if (i == 2
							&& value == "inch"
							&& ($('unit' + i).innerHTML == "kg" || $('unit' + i).innerHTML == 'lb')) {
						$('unit' + i).innerHTML = 'lb';
					} else {
						$('unit' + i).innerHTML = value;
					}
				}
			}
		}
		//
	</script>
	<div class="alert_thing_bg">
		<div class="alert_thing_top">
			<h5>Custom Options</h5>
			<DIV
				style="FONT-WEIGHT: bold; FONT-SIZE: 12px; LEFT: 226px; COLOR: #9e5201; POSITION: absolute; TOP: 20px"></DIV>
		</div>
		<div class="alert_thing_main">
			<div id="custom1" style="display: none;"></div>
			<script language="javascript">
				var customnum = 8;
			</script>
			<div id="custom2">
				<div class="left_img">
					<img
						src="http://www.mlo.me/image/default/TemplateGoods/custom-options.jpg" />
				</div>
				<div class="right_box">
					<table>
						<tr>
							<td colspan="2" align="right">Please select:<select
								name="units" onchange="changeunit(this.value);" id="customizeUnit"><option
										value="in">in</option>
									<option value="cm">cm</option>
							</select>
							</td>
						</tr>
						<tr>
							<td>A Shoulder Width:</td>
							<td><input id="Customszie1" name="Shoulder Width"
								type="text" size="8"><span id="unit1">cm</span><span
								id="cussize1" style="display: none;"><img
									src="http://www.mlo.me/image/endefault/check_error.gif" />
							</span>
							</td>

						</tr>
						<tr>
							<td>B Bust Size:</td>
							<td><input id="Customszie2" name="Bust Size"
								type="text" size="8"><span id="unit2">cm</span><span
								id="cussize2" style="display: none;"><img
									src="http://www.mlo.me/image/endefault/check_error.gif" />
							</span>
							</td>
						</tr>
						<tr>
							<td>C Waist Size:</td>
							<td><input id="Customszie3" name="Waist Size"
								type="text" size="8"><span id="unit3">cm</span><span
								id="cussize3" style="display: none;"><img
									src="http://www.mlo.me/image/endefault/check_error.gif" />
							</span>
							</td>
						</tr>
						<tr>
							<td>D Hip Size:</td>
							<td><input id="Customszie4" name="Hip Size"
								type="text" size="8"><span id="unit4">cm</span><span
								id="cussize4" style="display: none;"><img
									src="http://www.mlo.me/image/endefault/check_error.gif" />
							</span>
							</td>

						</tr>
						<tr>
							<td>E Hollow to floor (for floor length dress):</td>
							<td><input id="Customszie5" name="Hollow2floor"
								type="text" size="8"><span id="unit5">cm</span><span
								id="cussize5" style="display: none;"><img
									src="http://www.mlo.me/image/endefault/check_error.gif" />
							</span>
							</td>
						</tr>
					</table>
					<br /> Please provide detailed measurement information for
					customization base on "How to Measure". <br />
					<br /> For customer who likes to choose customized service, the
					correct size measured by professional tailor with your underwear on
					is strongly recommended. <br />
					<br /> Please measure with shoes on when you measure "Hollow to
					floor".
				</div>

			</div>

			<script language="javascript">
				changeunit('in');
			</script>
		</div>
		<div class="alert_thing_sub">
			<input name="Submit" type="button" value="Submit" class="submit_7" id="alert_thing_box_customizedsize_submit" /> 
			<input name="Cancel" type="reset" value="Cancel" class="submit_7"  id="alert_thing_box_customizedsize_cancel" />

		</div>
	</div>
</div>
<!--custom-->
