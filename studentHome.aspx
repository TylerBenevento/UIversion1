<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="studentHome.aspx.cs" Inherits="QEManager.studentHome" %>

<asp:Content ID="studentDash" ContentPlaceHolderID="studentHome" runat="server">

<div id = "stContainer" class="col-lg-12">

  <asp:Button id="dashboard" Text="Dashboard" runat="server" class="btnTab" OnClick="dashboard_Click" />
    <asp:Button id="qeApp" Text="Qualifying Exam" runat="server" class="btnTab" OnClick="qeApp_Click" />
    <asp:Button id="delay" Text="Delay" runat="server" class="btnTab" onclick="delay_Click"/>

    <div id="selectPage">
        
    <div id="stDash" runat ="server" visible="true">
      <div>
        <label><u>My Applications</u></label>
        </div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  HorizontalAlign= "Center">
            <Columns>            
                <asp:TemplateField HeaderText="Application Type" HeaderStyle-BackColor="DarkGray">
                    <ItemTemplate>
                        <%#Container.DataItem%>
                    </ItemTemplate>
                </asp:templateField>
                <asp:TemplateField HeaderText="Semester" HeaderStyle-BackColor="DarkGray">
                    <ItemTemplate>
                        <%#Container.DataItem%>
                    </ItemTemplate>
                </asp:templateField>
                <asp:TemplateField HeaderText="Approver 1" HeaderStyle-BackColor="DarkGray">
                    <ItemTemplate>
                        <%#Container.DataItem%>
                    </ItemTemplate>
                </asp:templateField>
                <asp:TemplateField HeaderText="Approver 2" HeaderStyle-BackColor="DarkGray">
                    <ItemTemplate>
                        <%#Container.DataItem%>
                    </ItemTemplate>
                </asp:templateField>
                <asp:TemplateField HeaderText="Final Decision" HeaderStyle-BackColor="DarkGray">
                    <ItemTemplate>
                        <%#Container.DataItem%>
                    </ItemTemplate>
                </asp:templateField>
                 <asp:TemplateField HeaderText="Decision Status" HeaderStyle-BackColor="DarkGray">
                    <ItemTemplate>
                        <%#Container.DataItem%>
                    </ItemTemplate>
                </asp:templateField>

             </Columns>
        </asp:GridView> <br /><br />

        <div class = "row">
             <div class="col-sm-1"></div>
        <div id="delayCol" class = "col-sm-4 ">

            <h3 class="applyHead col-sm-12">Apply for a Delay</h3>
            
                <div>Apply for a delay to have your qualifying exam be taken at a future date.</div>
            <asp:Button ID="applySelect" runat="server" Text="Select" /><br />

        </div>
        <div class="col-sm-2"></div>
     <div class="col-sm-4" id="applyCol">
            <h3 class="applyHead col-sm-12">Apply for the Qualifying Exam</h3>
            
                <div>Simply click the button the submit your application with your autofilled information. The system will pick your 7 best courses.</div>
         <asp:Button ID="delaySelect" runat="server" Text="Select"/><br />
        </div>
        </div>


    </div>

    <div id="stQEForm" runat="server" visible="false">

        QE FORM GOES HERRE (ASHLEY)

    </div>

     <div id="delayForm" runat="server" visible="false">

        DELAY FORM GOES HERRE (ROBBIE)

    </div>


</div>

</div>

</asp:Content>
