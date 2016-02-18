<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JSON.aspx.cs" Inherits="VS2015Test.JSON" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Timeline</title>
</head>
<body>
    <form id="form1" runat="server">
    
    
    <asp:SqlDataSource ID="IssuesSqlDataSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:LocalDatabaseConnectionString %>"
        SelectCommand="
            SELECT I.[ID]
                  ,I.[Volume]
                  ,I.[Issue]
                  ,I.[Year]
                  ,I.[Season]
                  ,'Vol. '
                   + CONVERT(varchar,I.[Volume])
                   + ' No. '
                   + CONVERT(varchar,I.[Issue])
                   + ', '
                   + I.[Season]
                   + ' '
                   + CONVERT(varchar,I.[Year]) AS [Label]
                  ,(SELECT COUNT(1)
                      FROM [Article]
                     WHERE [IssueID] = I.[ID]
                   ) AS [NumArticles]
              FROM [Issue] AS I
          ORDER BY [Volume]
                  ,[Issue]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="IssueSqlDataSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:LocalDatabaseConnectionString %>"
        SelectCommand="
            SELECT [ID]
                  ,[Volume]
                  ,[Issue]
                  ,[Year]
                  ,[Season]
                  ,'Vol. '
                   + CONVERT(varchar,[Volume])
                   + ' No. '
                   + CONVERT(varchar,[Issue])
                   + ', '
                   + [Season]
                   + ' '
                   + CONVERT(varchar,[Year]) AS [Label]
              FROM [Issue]
             WHERE [ID] = @IssueID">
        <SelectParameters>
            <asp:Parameter Name="IssueID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="ArticlesSqlDataSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:LocalDatabaseConnectionString %>"
        SelectCommand="
            SELECT [ID]
                  ,[IssueID]
                  ,[Title]
                  ,[StartPage]
                  ,[EndPage]
              FROM [Article]
             WHERE [IssueID] = @IssueID
          ORDER BY [StartPage]
                  ,[EndPage]">
        <SelectParameters>
            <asp:Parameter Name="IssueID" />
        </SelectParameters>
    </asp:SqlDataSource>


    </form>
</body>
</html>