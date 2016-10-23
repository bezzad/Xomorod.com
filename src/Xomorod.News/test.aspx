<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Xomorod.News.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>RSS</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <base href="/">
    <link rel="icon" href="images/favicon.png" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/ihover.min.css" rel="stylesheet" />
    <link href="css/rss_items_styles.css" rel="stylesheet" />

    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js" type="text/javascript"></script>
    <script src="js/app.js"></script>
</head>
<body ng-app="rssApp">
    <form id="form1" runat="server">


        <asp:Button runat="server" OnClick="btnUpdateRss_Click" Text="Update RSS" />
        <asp:TextBox ID="txtRssAddress" runat="server" Width="411px"></asp:TextBox>

        <br />
        <div class="container">
            <div ng-controller="newsController">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">RSS Feeds Parser v0.1</h2>
                        <h3 class="section-subheading text-muted"><a href="http://Xomorod.com">Xomorod</a></h3>
                    </div>
                </div>

                <br />

                <div class="row">
                    <div ng-repeat="rss in news">
                        <%--<div ng-if="$index % 1 == 0" class="clearfix"></div>--%>

                        <div class='items col-xs-4'>
                            <h5><a class="title-link">{{ rss.Title }}&nbsp;</a><small ng-if="rss.VisitCount != ''"><i class="fa fa-eye fa-2">&nbsp;&nbsp;{{ rss.VisitCount }}&nbsp;&nbsp;</i></small></h5>
                            <div class='{{ rss.Cls }}'>
                                <a href='{{ rss.Url }}'>
                                    <div class='spinner'></div>
                                    <div class='img'>
                                        <img src='{{ rss.ThumbnailUrl }}' alt='{{ rss.Title }}' />
                                    </div>
                                    <div class="info info-back">
                                        <h3>{{ rss.Category }}</h3>
                                        <p>{{ rss.Title }}</p>
                                    </div>
                                </a>
                            </div>


                            <div style="margin-bottom: 100px">
                                <h5><small ng-if="rss.Author != null"><i>by&nbsp;</i></small><a class="author-link">{{ rss.Author }}</a> - <i class="fa fa-clock-o">{{ rss.PublishDate }}</i></h5>

                                <%--<div style="font-size: 15px;" ng-bind-html="renderHtml(rss.Description)"></div>--%>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>

    </form>

</body>
</html>
