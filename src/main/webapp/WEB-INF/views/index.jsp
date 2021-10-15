<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.7.1.min.js"></script>

<head>
<!-- css -->
<style type="text/css">
.validateStyle{
	border: 1px solid red!important;
}
</style>
<meta charset="ISO-8859-1">
<title>Online Pizza Order Request</title>
</head>
<body>
	<div class="container md-5">
		<form:form id="pizzaOrderId" name="pizzaOrder" method="post" autocomplete="off">
		<div class="container-fluid"  style="min-height: 150px;">
			<div class="row mr-0 ml-0 form_title" align="center">
				<h4>ONLINE PIZZA ORDER REQUEST</h4>
			</div>
			<br>
			<fieldset>
				<div align="left">
					<div>
						<h5>Customer Information</h5>
					</div>
		
					<div class="row">
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Name :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<input type="text" name="name" class="form-control ValidateInput"
									id="nameId" autocomplete="off" oninput="hideError(this);">
							</div>
						</div>
						<br>
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Email :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<input type="text" name="email" class="form-control ValidateInput" onchange="validateEmail(this);"
									id="emailId" autocomplete="off" oninput="hideError(this);">
							</div>
						</div>
						<br>
					</div>
					
					<div class="row">
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Phone Number :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<input type="text" name="phone_number" class="form-control ValidateInput" maxlength="10"
									id="phnNumberId" autocomplete="off" onchange="onlyNumber(this);" oninput="hideError(this);">
							</div>
						</div>
						<br>
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Address :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<input type="text" name="address" class="form-control ValidateInput"
									id="addressId" autocomplete="off" oninput="hideError(this);">
							</div>
						</div>
					</div>
					
					<br>
					<div>
						<h5>Order Information</h5>
					</div>
					
					<div class="row">
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Pizza Type :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<select name="pizza_type" class="form-control ValidateInput">
									<option value="" selected="selected">--select--</option>
									<option value="Veggie">Veggie</option>
									<option value="Pepperoni">Pepperoni</option>
									<option value="Meat">Meat</option>
								</select>
							</div>
						</div>
						<br>
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Pizza Size :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<select name="pizza_size" class="form-control ValidateInput">
									<option value="" selected="selected">--select--</option>
									<option value="10">Small (10 CND$)</option>
									<option value="13">Medium (13 CND$)</option>
									<option value="15">Large (15 CND$)</option>
								</select>
							</div>
						</div>
					</div>
					<br>
					<div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Number Of Pizza :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<input type="text" name="number_of_pizza" class="form-control ValidateInput"
									id="numPizzaId" autocomplete="off" onchange="onlyNumber(this);" oninput="hideError(this);">
							</div>
						</div>
						<br>
						<div class="col-lg-4 col-sm-6">
							<div>
								<b>Discount Coupon :</b>
							</div>
						</div>
						<div class="col-lg-4 col-sm-6">
							<div>
								<select name="discount_coupon" class="form-control ValidateInput">
									<option value="" selected="selected">--select--</option>
									<option value="10">1111</option>
									<option value="30">2222</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</fieldset>
			<br>
			<div class="row">
					<div class="col-lg-12 col-sm-12" align="center">
						<input type="button" class=""  value="Submit" onclick="onClickSubmit();">
						<input type="button" class=""  value="Reset" onclick="onClickReset();">
					</div>
			</div>
		</div>
	</form:form>
	</div>
</body>
<script type="text/javascript">
function onClickSubmit()
{
	var flag = true;
	flag = formValidate("pizzaOrderId");
	if(flag)
		{
			if(confirm("Are you sure?")){
				document.pizzaOrder.action="./order/submitOrder";
				document.pizzaOrder.submit();
			}
		}
}

function onClickReset()
{
	document.pizzaOrder.reset();
}

function onlyNumber(id)
{
	var numbers = /^[-+]?[0-9]+$/;
	if(!id.value.match(numbers))
	{
		alert("Only numbers are allowed");
		id.value = "";
		id.focus();
	}
}

function validateEmail(txtinput) {
	var ck_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([A-Za-z]{2,6}(?:\.[a-z]{2})?)$/;
	{
		if (!txtinput.value == "") {
			if (txtinput.value.match(ck_email)) {
		
				return true;
			} else {
				txtinput.value = "";
				txtinput.focus();
				alert('Please enter valid Email Id.');
				return false;
			}
		}
	}
}

function formValidate(divName)
{
	var flag=true;
	alert(divName);
	/*for textbox , radio button , password*/
	var dataInput=$('#'+divName+' input[type="text"].ValidateInput ,#'+divName+' input[type="file"].ValidateInput ,#'+divName+' input[type="password"].ValidateInput');
	for(var i=0;i<dataInput.length;i++)
	{
		if($.trim(dataInput[i].value)=='')
		{
			//console.log(dataInput[i].id);
			$("#"+divName+" #"+dataInput[i].id).addClass("validateStyle");
			
			flag=false;
		}
	}
	
	/*for select tag*/
	var dataSelect=$('#'+divName+' select.ValidateInput');
	
	for(var i=0;i<dataSelect.length;i++)
	{
		if(dataSelect[i].value=='' || dataSelect[i].value=='-1')
		{
			$("#"+divName+" #"+dataSelect[i].id).addClass("validateStyle");
			flag=false;
		}
	}
	
	$('#'+divName+' .validateStyle').click(function(){
		$('#'+this.id).removeClass("validateStyle");
    });
    $('#'+divName+'.validateStyle').change(function(){
    	$('#'+this.id).removeClass("validateStyle");
    });
    $('#'+divName+'.validateStyle').focus(function(){
    	$('#'+this.id).removeClass("validateStyle");
    });
	
	return flag;
}

function hideError(data)
{
	$('#'+data.id).removeClass("validateStyle");
}
</script>
</html>