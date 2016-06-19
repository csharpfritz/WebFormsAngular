<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TripPlanner._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<h2>My Trips</h2>

	<asp:GridView runat="server" ID="tripGrid" UseAccessibleHeader="true" CssClass="table table-striped table-hover" 
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
