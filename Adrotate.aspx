<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adrotate.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/XMLfile.xml" runat="server" />

        <?xml version="1.0" encoding="utf-8" ?>
<Advertisements>
  <Ad>
    <ImageUrl></ImageUrl>
    <NavigateUrl></NavigateUrl>
    <AlternativeText></AlternativeText>
    <Impressions></Impressions>
    <Keyword></Keyword>
  </Ad>
  <Ad>
    <ImageUrl>~/images/download.png</ImageUrl>
    <NavigateUrl></NavigateUrl>
    <AlternativeText></AlternativeText>
    <Impressions>10</Impressions>
    <Keyword></Keyword>
  </Ad>
  <Ad>
    <ImageUrl>~/images/C87.jpg</ImageUrl>
    <NavigateUrl></NavigateUrl>
    <AlternativeText></AlternativeText>
    <Impressions>5</Impressions>
    <Keyword></Keyword>
  </Ad>
  <Ad>
    <ImageUrl>!/images/download.jpg</ImageUrl>
    <NavigateUrl></NavigateUrl>
    <AlternativeText></AlternativeText>
    <Impressions>12</Impressions>
    <Keyword></Keyword>
  </Ad>


</Advertisements>

    
    </div>
    </form>
</body>
</html>
