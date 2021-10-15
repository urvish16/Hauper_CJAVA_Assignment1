<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHOW ORDER</title>
</head>
<body>
<form:form id="showOrderId" name="showOrder" method="post" autocomplete="off">
	<div class="container-fluid"  style="min-height: 150px;">
			<div class="row mr-0 ml-0 form_title" align="center">
				<h4>SHOW YOUR ORDER</h4>
			</div>
			<br>
			<fieldset>
				<div align="center">
					<div>
						<h4><b>Welcome ${orderList[0].name}</b></h4>
					</div>
					<div>
						<h5><b>Your Order Details are as follows.</b></h5>
					</div>
					
					<br>
					<table>
						<tr>
							<td>Email Address :</td>
							<td>${orderList[0].email}</td>
						</tr>
						<tr>
							<td>Phone Number :</td>
							<td>${orderList[0].phone_number}</td>
						</tr>
						<tr>
							<td>Address :</td>
							<td>${orderList[0].address}</td>
						</tr>
					</table>
					
					<div>
						<h5><b>Pizza Details :</b></h5>
					</div>
					
					<table>
						<tr>
							<td>Pizza Type :</td>
							<td>${orderList[0].pizza_type}</td>
						</tr>
						<tr>
							<td>Pizza Size :</td>
							<td>
								<c:if test="${orderList[0].pizza_size eq 10}">Small</c:if>
								<c:if test="${orderList[0].pizza_size eq 13}">Medium</c:if>
								<c:if test="${orderList[0].pizza_size eq 15}">Large</c:if>
							</td>
						</tr>
						<tr>
							<td>Quantity :</td>
							<td>${orderList[0].number_of_pizza}</td>
						</tr>
						<tr>
							<td>Discount : :</td>
							<td>
							<c:if test="${orderList[0].discount_coupon eq 10}">10% (1111 coupon)</c:if>
							<c:if test="${orderList[0].discount_coupon eq 30}">30% (2222 coupon)</c:if>
							</td>
						</tr>
						<tr>
							<td>Total :</td>
							<td>CAD ${orderList[0].total}</td>
						</tr>
					</table>
				</div>
			</fieldset>
	</div>
</form:form>
</body>
</html>