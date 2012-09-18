<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div id="suitOpts">
	<div class="measure_dashboard" style="position: absolute;left: -650px;top:-50px;z-index: 302;float: left;background: #fff;border: 1px solid #bbb;display: none;">
		<div class="measure_dashboard_content">

			<div class="measure_panel">
				<div class="measure_title">
					<h2>Vest Buttons</h2>
					<p class="error red" id="Vest_Buttons_noti" style="color: #CC0000"></p>
				</div>
				<div class="measure_content">
						<ul class="img_opt two_img_item_flat">
							<li>
								<img src="/style/image/peak.png" value="Three" target="Vest_Buttons" checkableGroup="Vest_Buttons" >
								<h3 value="Three" target="Vest_Buttons" checkableGroup="Vest_Buttons">Three</h3>
							</li>
							<li>
								<img src="/style/image/notch.png" value="Five" target="Vest_Buttons" checkableGroup="Vest_Buttons">
								<h3 value="Five" target="Vest_Buttons" checkableGroup="Vest_Buttons">Five</h3>
							</li>
						</ul>
						<input type="hidden" value="" id="Vest_Buttons"  name="text@Vest_Buttons" checkRule="required" filedName="height" msg="Please select a Vest Button style" msgField="Vest_Buttons_noti">
					<p class="clearBoth"></p>
				</div>
			</div>
			
			<div class="measure_panel" style="display: none">
					<div class="measure_sidebar">
						<h2>Setup your measurement profile</h2>
						<p>Get started by filling in your height, weight, and age.</p>
					</div>
					<div class="measure_content">
						<p class="red"></p>
						<ul>
							<li><label>HEIGHT</label>
								<div class="measure_value">
									<input type="text" value="" name="measure_height" class="txt_input" checkRule="required,double" filedName="height" msg="Hight must be a number!" msgField="measure_height_noti">&nbsp;IN
								</div>
								<p class="clearBoth"></p></li>
	
							<li><label>WEIGHT</label>
								<div class="measure_value">
									<input type="text" class="txt_input"  value="" name="measure_weight" checkRule="required,double" filedName="height" msg="Weight must be a number!" msgField="measure_height_noti"> KG
								</div>
								<p class="clearBoth"></p></li>
	
	
							<li><label>AGE</label>
								<div class="measure_value">
									<input type="text" class="txt_input" value="" name="measure_age" checkRule="required,double" filedName="height" msg="Age must be a number!" msgField="measure_height_noti">
								</div>
								<p class="clearBoth"></p></li>
	
	
						</ul>
						<div class="red" id="measure_height_noti"></div>
						<p class="clearBoth"></p>
					</div>
			</div>
			
			
			
			
			
			
			
			<p class="clearBoth"></p>
		</div>
		<div class="measure_navigation">
			<script type="text/javascript">
			 function checkFields(){
				 return jq("#suitOpts").fieldCheck();
			 }
			</script>
			<div class="measure_buttons">
				<input type="button" class="button_01" value="<         PREVIOUS">
				<input type="button" class="button_01" value="NEXT             >">
				<input type="submit" id="nosubitem_addBag" class="button_01" value="FINISH           >" onclick="return checkFields()">
				<input type="button" class="button_01" value="Cancel">
			</div>
			<div class="measure_controller">
				<img class="pagination_active_m" src="/style/image/1x1.png" title="JACKET LAPELS">
				<img class="pagination_m" src="/style/image/1x1.png" title="JACKET VENTS">
				<img class="pagination_m" src="/style/image/1x1.png" title="JACKET BUTTONS">
				<img class="pagination_m" src="/style/image/1x1.png" title="JACKET LINING">
				<img class="pagination_m" src="/style/image/1x1.png" title="JACKET MONOGRAM">
				<img class="pagination_m" src="/style/image/1x1.png" title="PANTS PLEATS">
			</div>
		</div>
	</div>
</div>