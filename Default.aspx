<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UsersWebApplication1._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <!--begin fujitsu banner-->
    <section id="fujitsu-banner" class="start-banner">
        <div class="container">
            <div class="row banner-content">
                <div class="banner-text col-4">
                    <h3 class="light no-bold-text">Fujitsu sales toolkit</h3>
                    <h1 class="no-bold-text">Create high quality bespoke assets to inform your clients about Fujitsu's services</h1>
                </div>
            </div>  
        </div>
        <div class="row mob-banner-image">
            <img src="images/intro-tab-header.png">
        </div>
    </section>
    <!--end fujitsu banner-->
    <!--begin fujitsu intro-->
    <section id="fujitsu-intro" class="start-intro">
        <div class="container">
            <div class="row">
                <div class="col-12 midi">
                    <div class="text-box">
                        <p><strong>Hello and welcome to our private Fujitsu portal for designated Sales Team members only.</strong>
                            This site serves as a platform for you to develop customized content to support your engagements with your accounts with specific emphasis on cloud management, security, agility and optimization. The platform has been designed to provide you with the necessary assets and support to deliver relevant and personalized content to your customers. </p>
                    </div>
                    <div class="btn-wrapper centered"><a class="btn btn-colored" href="Document/Workflow.aspx">Get Started</a></div>
                </div>
            </div>
        </div>
    </section>
    <!--end fujitsu intro-->
    <!--begin fujitsu how it works-->
    <section id="fujitsu-how-it-works" class="start-how-it-works">
        <div class="container">
            <div class="row">
                <div class="text-box light centered col-12">
                    <h2 class="section-title">How does it work?</h2>
                </div>
            </div>
            <div class="row">
                <div class="box-bordered">
                    <div class="col-6">
                        <div class="text-box light">
                            <p>The platform has been developed to enable you to create assets (PDF documents, Emails, Web Landing pages) that reflect the specific needs of your customers.
                            <br><br>
                            The assets have been developed against five key topics related to Fujitsu's cloud management, security and optimization products and services >></p>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="text-box light">
                            <ol>
                                <li>Digital transformation/cloud adoption</li>
                                <li>Business agility</li>
                                <li>Cloud management</li>
                                <li>Cloud security/resilience</li>
                                <li>Cost optimization</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4 light">
                    <img src="images/intro-device-mockup.png" width="300">
                    <p>Select what medium you want your assets to take. PDF, a HTML email or a website landing page. </p>
                </div>
                <div class="col-4 light">
                    <img src="images/intro-icon-key-topics.png" width="300">
                    <p>Choose one of the five key topics you want your asset to cover (this content is fixed and cannot be edited).</p>
                </div>
                <div class="col-4 light">
                    <img src="images/intro-icon-customize-assets.png" width="300">
                    <p>Customise your asset, with a bespoke headline, introductory message and your own call to action.</p>
                </div>
            </div>
            <div class="row">
                <div class="btn-wrapper centered"><a class="btn btn-colored" href="Document/Workflow.aspx">Get Started</a></div>
            </div>
        </div>
    </section>
    <!--end fujitsu how it works-->
    <!--start type of content-->
    <section id="fujitsu-content-type" class="start-content-type">
        <div class="container">
            <div class="row">
                <div class="text-box centered col-12">
                    <h2 class="section-title">What type of content can I create?</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="accordion-container">
                        <button class="accordion">PDF document</button>
                        <div class="panel">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                    </div>
                    <div class="accordion-container">
                        <button class="accordion">HTML content</button>
                        <div class="panel">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                    </div>
                    <div class="accordion-container">
                        <button class="accordion">Website landing page</button>
                        <div class="panel">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="text-box centered">
                        <img src="Images/mockup_example.png">
                        <div class="btn-wrapper"><a class="btn btn-bordered" style="margin-right: 10px;" href="downloads/cloud-security-resilience-example.pdf" target="_blank">View Example</a> <a class="btn" href="https://hybridcustomization.com/BestPractise">Best Practices</a></div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!--end type of content-->
    <!--start content topic-->
    <section id="fujitsu-content-topic" class="start-content-topic">
        <div class="container full-width">
            <div class="row">
                <div class="text-box centered col-12">
                    <h2 class="section-title">What topics are covered?</h2>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="text-box">
                        <div class="accordion-container">
                            <button class="accordion accordion-1">Digital transformation/cloud adoption</button>
                            <div class="panel">
                                <div class="panel-content">
                                    <div class="col-4">
                                        <img src="images/fujitsu-intro-img-1.png"></div>
                                    <div class="col-8">
                                        <p>The Digital Transformation/Cloud Adoption topic introduces the rapid changes that are taking place in terms of cloud adoption. How matching a cloud strategy with the specific objectives and outcomes businesses want to achieve, will enable companies to leverage the power of data and make the most of emerging technologies like AI, Machine Learning, and even Blockchain.</p>
                                        <p style="color:#ea0001;"><strong>Subjects covered</strong></p>
                                        <ul>
                                            <li>Trends impacting digital transformation</li> 
                                            <li>The role of the cloud in digital transformation</li> 
                                            <li>Achieving data for impact</li> 
                                        </ul>
                                        <p>Creating the right digital infrastructure.</p>
                                    </div>
                                </div>                            
                            </div>
                        </div>
                        <div class="accordion-container">
                            <button class="accordion accordion-1">Business agility</button>
                            <div class="panel">
                                <div class="text-box">
                                    <p>The Business Agility topic introduces the Fujitsu Cloud Managed Services solution to enable rapid (and secure) resource deployment and deliver the enhanced agility customer need to drive and manage rapid change so that they can thrive in a World of change and constant disruption. This is all achieved through our global cloud-native managed service, giving customers get end-to-end support for their cloud environment.</p>
                                    <p style="color:#ea0001;"><strong>Subjects covered</strong></p>
                                        <ul>
                                            <li>Deploy and provision at speed</li>
                                            <li>Provide always-on services</li>
                                            <li>Adding value through innovation</li>
                                            <li>Operate with agility and efficiency</li>
                                            <li>Protect users</li>
                                            <li>Optimize costs</li> 
                                        </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-container">
                            <button class="accordion accordion-1">Cloud management</button>
                            <div class="panel">
                                <div class="text-box">
                                    <p>The Cloud Management topic looks at how businesses can maximize the value of the cloud. But a great cloud doesn't just happen; it has to be managed. That's why Fujitsu's Cloud Management Service (FCMS) can make a difference. <br><br>
                                    FCMS has been designed to free up people's time so they can focus on business objectives like innovation and delivering a great user and customer experience.</p>
                                    <p style="color:#ea0001;"><strong>Subjects covered</strong></p>
                                        <ul>
                                            <li>Operate with agility, resilience, and compliance</li>
                                            <li>Ensuring cloud value</li>
                                            <li>Creating the right digital infrastructure</li>
                                            <li>Value-adding partnerships</li> 
                                        </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-container">
                            <button class="accordion accordion-1">Cloud security/resilience</button>
                            <div class="panel">
                                <div class="text-box">
                                    <p>The Cloud Security/Resilience topic looks at why cloud configuration is vital in a world of growing cyber-security threats. How a focus on achieving resilience from great security, is the key to agility based on a confident workforce able to drive business development and innovation.</p>
                                    <p style="color:#ea0001;"><strong>Subjects covered</strong></p>
                                        <ul>
                                            <li>Keeping cloud and multi-cloud environments secure</li>
                                            <li>Strengthen cyber security capabilities</li>
                                            <li>Build resilience</li>
                                            <li>Empower agility</li>
                                            <li>Ensure compliance</li>
                                            <li>Stay ahead of threats</li>
                                            <li>Secure and empower users</li>
                                            <li>Create seamless experiences</li>
                                        </ul>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-container">
                            <button class="accordion accordion-1">Cost optimisation</button>
                            <div class="panel">
                                <div class="text-box">
                                    <p>The Cost Optimization topic introduces the benefits of an efficient and agile infrastructure and how this enables businesses to cut day-to-day management costs, and remove technical debt and stranded costs. By optimizing costs, businesses can get as much value from their IT infrastructure as possible. Fujitsu Cloud Management Service enables businesses to realize the benefits of great digital services, do more with the cloud, focus on Opex, and balance speed with long-term needs.</p>
                                    <p style="color:#ea0001;"><strong>Subjects covered</strong></p>
                                        <ul>
                                            <li>Efficient and agile infrastructuree</li>
                                            <li>Invest in business agility</li>
                                            <li>Benefit from digital acceleration</li>
                                            <li>Achieve more with cloud</li>
                                            <li>Move from Capex to Opex faster</li>
                                        </ul>
                                    <p>Balance speed with a long-term strategy.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="btn-wrapper centered"><a class="btn btn-colored" href="Document/Workflow.aspx">Get Started</a></div>
            </div>
        </div>
    </section>
    <!--end content topic-->
    <!--start cta-->
    <section id="fujitsu-cta" class="start-cta">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    &nbsp;
                </div>
                <div class="col-6">
                    <div class="text-box">
                        <h3>Creating focused assets</h3>
                        <p><strong>Now you understand the purpose behind, and topics within the Fujitsu customization platform, you can now start creating focused and effective assets that support your customer and prospect engagements.</strong></p>
                        <div class="btn-wrapper"><a class="btn btn-colored" href="Document/Workflow.aspx">Get Started</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <!--end cta-->
    <section id="fujitsu-footer" class="start-intro-footer">
        <div class="container">
            <div class="row">               
                <div class="text-box light centered">
                    <p><strong>Official Social Media Accounts</strong></p>
                    <div class="social-links centered">
                        <a href="#"><img src="images/icon-facebook.png"></a>
                        <a href="#"><img src="images/icon-twitter.png"></a>
                        <a href="#"><img src="images/icon-youtube.png"></a>
                        <a href="#"><img src="images/icon-linkedin.png"></a>
                    </div>
                    <p style="font-size: 14px;">Copyright 1995 - 2023 Fujitsu</p>
                </div>
            </div>
        </div>
    </section>   
    <script src="Scripts/accordion.js"></script></asp:Content>


