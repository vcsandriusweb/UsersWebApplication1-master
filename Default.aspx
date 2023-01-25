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
                    <div class="accordion-menu">
                        <ul>
                            <li>
                                <input type="checkbox" checked>
                                <i class="arrow"></i>
                                <h2><i class="fas fa-code"></i>PDF Document</h2>
                                <p>The PDF document template enables you to develop documents that focus on the specific needs of a particular customer. You can select the most appropriate template from one of the key topic areas as detailed in this custom platform. Customizable content elements enable you to create a document headline that talks directly to that customer, an introduction page that enables you to reflect on a conversation or highlight points related to that topic you know they are interested in and a back cover where you can provide your contact details and direct them to other assets such as a web landing page.<br><br>When a slide deck is personalized, people take it more seriously. They feel ownership over it. And when they do that, they have a closer connection to its source and its contents. </p>
                            </li>
                            <li>
                                <input type="checkbox" checked>
                                <i class="arrow"></i>
                                <h2><i class="fas fa-question"></i>Email</h2>
                                <p>The template enables you to create emails that enable you to develop a personal message to a customer, focusing on their specific needs and objectives.   You can select the most appropriate template from one of the key topic areas as detailed in this custom platform.  Customizable content elements enable you to write a personalized introduction that talks directly to that customer, connect relevant content and assets that relate to that topic, and provide your contact details to encourage continued engagement.<br><br>You can modify that copy to use key words that your contact used (uses). For instance, they might not use the word 'resilience' but 'sound security practice' - so use those words. They will resonate quicker with the reader. If they have mentioned specific areas, like a distributed workforce, then refer to that too. It can all fit into the template.</p>
                            </li>
                            <li>
                                <input type="checkbox" checked>
                                <i class="arrow"></i>
                                <h2><i class="fas fa-laugh"></i>Website landing page</h2>
                                <p>Customers will engage with a landing page that's personalized to their needs. When they do, it's important that it gets to the point quickly in both the headline and the accompanying copy below it.<br><br>The template enables you to create landing pages that that focus on the specific needs of a particular customer.  You can select the most appropriate template from one of the key topic areas as detailed in this custom platform. Customizable content elements enable you to write a personalized introduction that talks directly to that customer, connect relevant content and assets that relate to that topic, and provide your contact details to encourage continued engagement.<br><br>Most people scan the top of a web page and only scroll down if they think it's got what they need right now. So, it's important to be clear that it DOES have what they need right now.</p>
                            </li>
                        </ul>
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
                <div class="accordion-menu">
                    <ul>
                        <li>
                            <input type="checkbox" checked>
                            <i class="arrow"></i>
                            <h2><i class="fas fa-code"></i>Digital transformation/cloud adoption</h2>
                            <p style="display: flex; flex-direction: row;">
                                <span class="col-4">
                                    <img src="images/fujitsu-intro-img-1.png">
                                </span>
                                <span class="col-8">
                                    <span>The Digital Transformation/Cloud Adoption topic introduces the rapid changes that are taking place in terms of cloud adoption. How matching a cloud strategy with the specific objectives and outcomes businesses want to achieve, will enable companies to leverage the power of data and make the most of emerging technologies like AI, Machine Learning, and even Blockchain.</span>
                                    <br /><br /> 
                                    <span style="color:#EA0000;"><strong>Subjects covered</strong></span><br>
                                    <span><i class="bi bi-dot"></i>The role of the cloud in digital transformation</span><br> 
                                    <span><i class="bi bi-dot"></i>Achieving data for impact</span><br> 
                                    <span><i class="bi bi-dot"></i>Trends impacting digital transformation</span>
                                    <br>
                                    <span><i class="bi bi-dot"></i>Creating the right digital infrastructure.</span>
                                </span>    
                            </p>
                        </li>
                        <li>
                            <input type="checkbox" checked>
                            <i class="arrow"></i>
                            <h2><i class="fas fa-question"></i>Business Agility</h2>
                            <p style="display: flex; flex-direction: column; padding: 20px;">
                                <span>The Business Agility topic introduces the Fujitsu Cloud Managed Services solution to enable rapid (and secure) resource deployment and deliver the enhanced agility customer need to drive and manage rapid change so that they can thrive in a World of change and constant disruption. This is all achieved through our global cloud-native managed service, giving customers get end-to-end support for their cloud environment.</span>
                                <br /><br />
                                <span style="color:#EA0000;"><strong>Subjects covered</strong></span>
                                <span><i class="bi bi-dot"></i>Deploy and provision at speed</span>
                                <span><i class="bi bi-dot"></i>Provide always-on services</span>
                                <span><i class="bi bi-dot"></i>Adding value through innovation</span>
                                <span><i class="bi bi-dot"></i>Operate with agility and efficiency</span>
                                <span><i class="bi bi-dot"></i>Protect users</span>
                                <span><i class="bi bi-dot"></i>Optimize costs</span> 
                            </p>
                        </li>
                        <li>
                            <input type="checkbox" checked>
                            <i class="arrow"></i>
                            <h2><i class="fas fa-laugh"></i>Cloud Management</h2>
                            <p style="display: flex; flex-direction: column; padding: 20px;">
                                <span>The Cloud Management topic looks at how businesses can maximize the value of the cloud. But a great cloud doesn't just happen; it has to be managed. That's why Fujitsu's Cloud Management Service (FCMS) can make a difference. <br><br>
                                FCMS has been designed to free up people's time so they can focus on business objectives like innovation and delivering a great user and customer experience.</span>
                                <br /><br />
                                <span style="color:#ea0000;"><strong>Subjects covered</strong></span>
                                <span><i class="bi bi-dot"></i>Operate with agility, resilience, and compliance</span>
                                <span><i class="bi bi-dot"></i>Ensuring cloud value</span>
                                <span><i class="bi bi-dot"></i>Creating the right digital infrastructure</span>
                                <span><i class="bi bi-dot"></i>Value-adding partnerships</span>
                            </p>   
                        </li>
                        <li>
                            <input type="checkbox" checked>
                            <i class="arrow"></i>
                            <h2><i class="fas fa-laugh"></i>Cloud Security/Resilience</h2>
                            <p style="display: flex; flex-direction: column; padding: 20px;">
                                <span>The Cloud Security/Resilience topic looks at why cloud configuration is vital in a world of growing cyber-security threats. How a focus on achieving resilience from great security, is the key to agility based on a confident workforce able to drive business development and innovation.</span>
                                <br /><br />
                                <span style="color:#ea0000;"><strong>Subjects covered</strong></span>
                                <span><i class="bi bi-dot"></i>Keeping cloud and multi-cloud environments secure</span>
                                <span><i class="bi bi-dot"></i>Strengthen cyber security capabilities</span>
                                <span><i class="bi bi-dot"></i>Build resilience</span>
                                <span><i class="bi bi-dot"></i>Empower agility</span>
                                <span><i class="bi bi-dot"></i>Ensure compliance</span>
                                <span><i class="bi bi-dot"></i>Stay ahead of threats</span>
                                <span><i class="bi bi-dot"></i>Secure and empower users</span>
                                <span><i class="bi bi-dot"></i>Create seamless experiences</span>
                            </p>  
                        </li>
                        <li>
                            <input type="checkbox" checked>
                            <i class="arrow"></i>
                            <h2><i class="fas fa-laugh"></i>Cost Optimization</h2> 
                            <p style="display: flex; flex-direction: column; padding: 20px;">
                                <span>The Cost Optimization topic introduces the benefits of an efficient and agile infrastructure and how this enables businesses to cut day-to-day management costs, and remove technical debt and stranded costs. By optimizing costs, businesses can get as much value from their IT infrastructure as possible. Fujitsu Cloud Management Service enables businesses to realize the benefits of great digital services, do more with the cloud, focus on Opex, and balance speed with long-term needs.</span>
                            <br /><br />
                                <span style="color:#ea0000;"><strong>Subjects covered</strong></span>
                                <span><i class="bi bi-dot"></i>Efficient and agile infrastructuree</span>
                                <span><i class="bi bi-dot"></i>Invest in business agility</span>
                                <span><i class="bi bi-dot"></i>Benefit from digital acceleration</span>
                                <span><i class="bi bi-dot"></i>Achieve more with cloud</span>
                                <span><i class="bi bi-dot"></i>Move from Capex to Opex faster</span>
                            <br>
                                <span>Balance speed with a long-term strategy.</span>
                        </p>  
                        </li>
                    </ul>
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
    </asp:Content>


