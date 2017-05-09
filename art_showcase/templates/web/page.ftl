<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/debugging.ftl" as debug />
<#import "/templates/web/common/macros.ftl" as theme />
<#include "/templates/web/navigation/navigation.ftl">

<!DOCTYPE html>
<html lang="en" >
  <head>
    <meta charset="utf-8">
    <title>${contentModel.title}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <!-- Raleway Google fonts  -->
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,400italic,500,100italic,700' rel='stylesheet' type='text/css'>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">


    <link rel="stylesheet" href="static-assets/css/normalize.css">
    <link rel="stylesheet" href="static-assets/css/fonticons.css">
    <link rel="stylesheet" href="static-assets/css/magnific-popup.css">
    <link rel="stylesheet" href="static-assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="static-assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="static-assets/css/bootstrap.css">
    <link rel="stylesheet" href="static-assets/css/jquery.scrollindicatorbullets.css" />

    <!-- For navmenu css -->
    <link rel="stylesheet" href="static-assets/css/navmenu.css" />

    <!--For Plugins external css-->
    <link rel="stylesheet" href="static-assets/css/plugins.css" />

    <!--Theme custom css -->
    <link rel="stylesheet" href="static-assets/css/style.css">

    <!--Theme Responsive css-->
    <link rel="stylesheet" href="static-assets/css/responsive.css" />

    <!--Theme Colors css-->
    <!--<link rel="stylesheet" href="static-assets/css/white.css">-->



    <!--Old browser  JS-->
    <script src="static-assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
  </head>
  <body id="body" data-spy="scroll" data-target="#scrollspy" >
    <div class="main_figur" <@studio.componentContainerAttr target="sectionComponents" objectId=model.objectId /> >
      <div class="container">
        <div class="div-menu">
            <header class="cd-header">
                <a href="/#" class="brand-logo text-left"><img src="${contentModel.siteLogo}" alt="" /></a>
                <a class="cd-menu-trigger" href="#main-nav"><span></span></a>
            </header>
        </div>

        <nav id="main-nav">
            <ul>
              <@renderNavigation "/site/website", 1 />
            </ul>
            <a href="#" class="cd-close-menu">Close<span></span></a>
        </nav>
      </div>

      

      <#-- Print each section -->
      <#list (contentModel.sectionComponents.item)![] as section>
        <#-- <section id="section${section?index+1}" > -->
        <@renderComponent component=section />

        <#-- <#assign foo><@debug.objectToJson object=sectionComponent /></#assign> -->
        <#-- <pre>${foo?html}</pre> -->
    
        
        <#-- <#assign sectionContentItem =  siteItemService.getSiteItem(sectionComponent.key) />
        <#if sectionContentItem.dom.component["content-type"] == "/component/section-header" >
        
        <#elseif false>
        </#if>
        -->
      </#list>

      <!-- Contact Section -->
      <section id="contactus" class="contactus colorsbg">
        <div class="container-fluid">
            <div class="row">
                <div class="main_service_area main_contactus_area">

                    <div class="row row-eq-height">
                        <div class="col-md-6 no-padding">
                            <div class="contact_us_right wow fadeInLeft">
                                <div class="single_contactus">
                                    <div class="ourmap"></div>
                                </div>
                            </div>
                        </div><!-- End of col-md-6 -->


                        <div class="col-md-6 no-padding wow rollIn">
                            <div class="main_contact_area p-t-2 p-x-3">
                                <div class="head_title">
                                    <h2>Contact Us</h2>
                                </div>
                                <div class="single_contant_right">
                                    <form action="/doContact" id="contactFormId" method="post">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="name" placeholder="Your Name..." required="">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="phone" placeholder="Phone" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="email" class="form-control" name="email" placeholder="Your Email Address" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <textarea class="form-control" name="message" rows="8" placeholder="Your Message"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="hidden" name="contextURL" value="/${contentModel['folder-name']}" >
                                        <div class="row">
                                            <div class="m-b-2 m-t-2">
                                                <input type="submit" value="Send message" id="contactSubmit">
                                            </div>
                                        </div>
                                    </form>

                                </div>
                                <!-- Copyright -->
                                <div class="row">
                                    <div class="main_footer">
                                        <div class="col-md-3">
                                            <div class="footer_logo text-xs-center m-b-2">
                                                <a href="#home"><img src="${contentModel.siteLogo}" alt="" /></a>
                                            </div>
                                        </div>

                                        <div class="col-md-8">
                                            
                                        </div>
                                        <div class="col-md-1 no-padding">
                                            <div class="scrollup center">
                                                <a href="#"><i class="fa fa-chevron-up"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- End of row -->
                            </div><!-- End of main contact area -->

                        </div><!-- End of col-md-6 -->
                    </div>
                </div>
            </div><!-- End of row -->
        </div><!-- End of container -->
      </section><!-- End of Contactus Section -->
    </div>

    <script src="static-assets//js/vendor/jquery-1.11.2.min.js"></script>
    <script src="static-assets//js/vendor/bootstrap.min.js"></script>

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="static-assets/js/jquery.waypoints.min.js"></script>
    <script src="static-assets/js/jquery.scrollindicatorbullets.min.js"></script>
    <script src="static-assets//js/jquery.easing.1.3.js"></script>
    <script src="static-assets/js/materialize.js"></script>
    <script src="static-assets//js/jquery.magnific-popup.js"></script>
    <script src="static-assets//js/freewall.js"></script>

    <script src="http://maps.google.com/maps/api/js"></script>
    <script src="static-assets//js/gmaps.min.js"></script>
    <script>
        var map = new GMaps({
            el: '.ourmap',
            lat: ${contentModel.locationLatitude!0},
            lng: ${contentModel.locationLongitude!0},
            scrollwheel: false,
            zoom: 15,
            zoomControl: true,
            panControl: false,
            streetViewControl: true,
            mapTypeControl: false,
            overviewMapControl: false,
            clickable: false,
            styles: [{'stylers': [{'hue': '#000'}, {saturation: -200},
                        {gamma: 0.50}]}]
        });
        map.addMarker({
            lat: ${contentModel.locationLatitude!0},
            lng: ${contentModel.locationLongitude!0}
        });
    </script>

    <script src="static-assets//js/plugins.js"></script>
    <script src="static-assets//js/main.js"></script>
    <@studio.toolSupport/>	
  </body>
</html>