<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TripPlanner._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<h2>My Trips</h2>

	<asp:GridView runat="server" ID="tripGrid" 
		AutoGenerateColumns="false"
		AllowSorting="true"
		ItemType="TripPlanner.Models.Trip"
		SelectMethod="GetTrips">
		<Columns>
			<asp:DynamicField DataField="Destination" />
			<asp:BoundField DataField="Departure" SortExpression="Departure" DataFormatString="{0:M/d/yyyy}" HeaderText="Departure Date" />
			<asp:BoundField DataField="Return" SortExpression="Return" DataFormatString="{0:M/d/yyyy}" HeaderText="Return Date"/>
			<asp:TemplateField HeaderText="Distance" SortExpression="Distance">
				<ItemTemplate>
					<%#: Item.Distance %>  miles
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>

	<%--
	<div data-ng-controller="myController">

	<table id="grid" class="table table-striped table-hover">
		<thead>
			<tr>
				<th><a href="#" data-ng-click="orderByField='Destination'; orderByAsc=!orderByAsc;">Destination</a></th>
				<th><a href="#" data-ng-click="orderByField='Departure'; orderByAsc=!orderByAsc;">Departure</th>
				<th><a href="#" data-ng-click="orderByField='Return'; orderByAsc=!orderByAsc;">Return</th>
				<th><a href="#" data-ng-click="orderByField='Distance'; orderByAsc=!orderByAsc;">Distance</th>
			</tr>
		</thead>
		<tbody>
			<tr data-ng-repeat="trip in trips | orderBy:orderByField:orderByAsc">
				<td>{{trip.Destination}}</td>
				<td>{{trip.Departure | date:'shortDate'}}</td>
				<td>{{trip.Return | date:'shortDate'}}</td>
				<td>{{trip.Distance}} miles</td>
			</tr>
		</tbody>
	</table>

		</div>
--%>
</asp:Content>
<%--
<asp:Content runat="server" ContentPlaceHolderID="scripts">

	<script type="text/javascript">
		(function () {

			angular.module("myApp").controller("myController", myController, ['$scope']);

			function myController($scope) {

				$scope.orderByField = "Departure";
				$scope.orderByAsc = false;

				PageMethods.GetTrips(function (result, context) {

					console.log(result);
					$scope.trips = result;
					$scope.$apply();

				});

			}

		})();
	</script>

</asp:Content>
--%>
