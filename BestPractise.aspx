<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BestPractise.aspx.cs" Inherits="UsersWebApplication1.BestPractise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!--begin fujitsu banner-->
    <section id="fujitsu-banner" class="bp-banner">
        <div class="container full-width">
            <div class="row">
                <div class="text-box centered col-12">
                    <h2 class="section-title">Fujitsu customizable platform: Best practice guide to making your interactions with customers more personal</h2>
                </div>
            </div>
        </div>
    </section>
    <!--end fujitsu banner-->
    <!--begin fujitsu intro-->
    <section id="fujitsu-intro" class="bp-intro">
        <div class="container">
            <div class="row">
                <div class="col-12 midi">
                    <div class="text-box">
                        <p>When you receive a marketing message that's not just addressed to you, but actually focuses on the things that you care about right now, you pay more attention to it. You also feel that the sender has taken the time to understand what your needs are, has tailored the materials to focus on those issues, and is therefore someone who can actually help. 
                        <br><br>
                        That's why it's important to take the time to reflect the content of your interactions with potential or existing customers in the materials you send to them as you follow up leads and develop relationships.
                        <br><br>    
                        In this short guide we show you how that can work and offer simple tips about re-working key bits of copy in three areas:</p>
                        <ul>
                            <li style="margin-bottom: .5em;">Emails to customers</li>
                            <li style="margin-bottom: .5em;">Slide presentations</li>
                            <li style="margin-bottom: .5em;">Personalised landing pages</li>
                        </ul>
                        <p><strong>When you take a customer on a journey, it's important you reference them by name and focus on the journey that THEY are taking within their role and their enterprise.</strong></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--end fujitsu intro-->
    <!--start fujitsu tab content-->
    <section id="fujitsu-tabs" class="bp-tabs">
        <div class="container">
            <div class="row">
                <div class="tab-container">
                    <div class="tab-menu">
                        <a class="tablinks" onclick="openTab(event, 'pdf')">
                            <span><img class="icon-default" src="images/fujitsu-tab-icon-pdf.svg"><img class="icon-active" src="images/fujitsu-tab-icon-pdf-active.svg"></span>
                            <span>PDF document</span>
                        </a>
                        <a class="tablinks" onclick="openTab(event, 'mail')">
                            <span><img class="icon-default" src="images/fujitsu-tab-icon-mail.svg"><img class="icon-active" src="images/fujitsu-tab-icon-mail-active.svg"></span>
                            <span>HTML email</span>
                        </a>
                        <a class="tablinks" onclick="openTab(event, 'web')">
                            <span><img class="icon-default" src="images/fujitsu-tab-icon-web.svg"><img class="icon-active" src="images/fujitsu-tab-icon-web-active.svg"></span>
                            <span>Website landing page</span>
                        </a>
                    </div>                  
                    <div id="pdf" class="tab-content-container tabcontent">
                        <div  class="col-12 midi">
                            <div class="text-box">
                            <h3>PERSONALIZING A SLIDE DECK</h3>
                                <p>Slide decks get shared all the time, and your contact will have been sent a lot of them from both internal and external sources. When a slide deck is personalized, people take it more seriously. They feel ownership over it. And when they do that, they have a closer connection to its source and its contents. 
                                <br><br>
                                So, take a look through a slide deck and edit it so that it contains exactly what your contact wants right now. Cut slides which aren't relevant BEFORE it's sent. Add slides which you think are MORE relevant and make sure they fit into the messaging flow of the deck as a whole. You'll be able to judge that based on your experience with the contact. 
                                <br><br>  
                                Also, think about how the slide deck might be used by your contact as they share it with other people within their organization. Ensuring that the name of the company - in this case, BigCorp - is referred to more than just in the first two slides. By using the name in headlines later on in the deck then you avoid the suggestion that all that's tailored is… the first two slides. 
                                <br><br>    
                                In the same deck we've done just that.</p>
                            </div>
                            <div class="text-box text-box-bordered centered">
                                <h6>[Front cover: Headline]</h6>
                                <h4><strong>Building a Resilient Future with Secure Hybrid IT</strong></h4>
                                <h6>[Front cover: Sub headline]</h6>
                                <h5><strong>BigCorp &amp; Fujitsu, a plan to achieve long-term cloud confidence</strong></h5>
                            </div>
                            
                            <div class="text-box">
                                <p>Again, the point is to always focus on the main subject which the contact is interested in. Don't over complicate the message. You and Fujitsu are going to deliver exactly what the contact needs. 
                                <br><br>
                                Then on slide two reiterate the message of the landing page. This is important as the deck will be shared with other people and they will not have seen that page or the emails leading up to the deck.
                                <br><br>    
                                Or, if the deck comes earlier in the engagement, it doesn't matter if no one has seen those assets.</p>
                            </div>
                            <div class="text-box text-box-bordered">
                                <h6>[Slide 2: Intro]</h6>
                                <p>Your objectives are clear and powerful: create a secure Hybrid IT environment that supports near- and long-term objectives. This includes empowering an increasingly distributed workforce with secure access to critical data and systems at high levels of security. 
                                <br><br>
                                You want to boost digitalization of processes across your supply-chains while reducing costs and achieving a leaner organisation across multiple territories. All without compromising quality or security.
                                <br><br>
                                Specific targets are:
                                <ul>
                                    <li style="margin-bottom: 0.5em;">Serve 3,500 employees</li>
                                    <li style="margin-bottom: 0.5em;">Flex contact centre capacity</li>
                                    <li style="margin-bottom: 0.5em;">Secure supply chains</li>
                                    <li style="margin-bottom: 0.5em;">Reduce costs by X%</li>
                                    <li style="margin-bottom: 0.5em;">Boost productivity by factor of 4</li>
                                </ul>
                                This deck describes how Fujitsu can address your strategy and enable you to deliver on your objectives.</p> 
                            </div>
                            <div class="text-box">
                                <p>Of course, that's all made up. But you see the point. Don't use too many words, focus on the key issues your contact has spoken about, and repeat them in strategic places so that it's clear you understand what they want, and Fujitsu can work with them to help do what they want to do.
                                <br><br>
                                <u>Finally</u> the back cover.  Here you can re-emphasize key points made in the deck and provide your audience with the various means channels of getting in touch with you to explore the solutions and opportunity further.</p>
                            </div>
                            <div class="text-box text-box-bordered">
                                <h6>[Back cover]</h6>
                                <p>I know you'd like to take decisive action on this issue, and you found the content of this document interesting. Fujitsu's approach enables your IT team to deliver that security as well as the benefits of Hybrid IT that you believe in, with efficiency AND security.  
                                <br><br>
                                We have also created a web page on this topic that's tailored to your needs, please take a look.
                                <br><br>
                                Let's try to meet/talk and see what we can do to make progress together.
                                </p> 
                                <h6>[contact details plus landing page URL]</h6>
                            </div>
                        </div>
                    </div>

                    <div id="mail" class="tab-content-container tabcontent">
                        <div class="col-12 midi">
                            <div class="text-box">
                                <h3>MAKING YOUR EMAILS PERSONAL</h3>
                                <p>We've chosen the subject of cloud resilience as an example. Your focus might be different, but the same simple techniques apply. 
                                <br><br>
                                Most people scan the subject / banner headers very quickly, so that's where you need to get the specific issue you've spoken about with the client in sharp focus (and in bold!)
                                <br><br>    
                                Imagine you've been talking with Robert Williams, an IT decision maker at BigCorp. 
                                <br><br>
                                You spoke about his worries on security and resilience as the company moves increasingly to Hybrid IT, and the tech press has been full of stories about hacks and ransomware attacks with potentially expensive (and litigious) losses of data, corporate and personal.
                                <br><br>    
                                So, get straight to the point in the banner:</p> 
                            </div>
                            <div class="text-box text-box-bordered centered">
                                <h6>[HEADER BANNER]</h6>
                                <h4>Boosting BigCorp's cloud confidence with security and resilience is your top priority.</h4>
                            </div>
                            <div class="text-box">
                                <p>That's what you talked about in your first conversation. So, it must be the headline. 
                                <br><br>
                                Then, decide how you address your contact: does he prefer Robert, Rob, or Bob? You'll know that from your initial conversation. Judge whether you're familiar or more formal depending on the personality of the contact. 
                                <br><br>
                                In this case, he prefers Bob. Now, personalise the intro to the subject - perhaps even refer to the circumstances in which you spoke or met. In this case, you met Bob at a trade fair.</p>
                            </div>
                            <div class="text-box text-box-bordered">
                                <p><em>Hi Bob,</em></p>
                                <h6>[PERSONALISED INTRO]</h6>
                                <p><em>It was great meeting you at Big Tech World last week. You are right to focus on security at the moment. Attacks are growing fast, so I thought this was a good time to each out and see if we could help you achieve your goals.</em>
                                </p>
                            </div>
                            <div class="text-box">
                                <p>Then you can use existing copy which focuses on what Fujitsu can offer.</p>
                            </div>
                            <div class="text-box text-box-bordered">
                                <h6>[BODY COPY]</h6>
                                <p><em>In a world of growing cyber-security threats, it's vital that your cloud is configured properly. It's a fact that almost every organization is worried about security. Top of the list of potential vulnerabilities is misconfiguration, followed closely by unauthorized access and insecure interfaces and API's. 
                                <br><br>
                                At Fujitsu, we're focused on resilience. The kind you get from great security. It's the key to agility based on a confident workforce able to drive business development and innovation. We have the approach that'll deliver that confidence.</em></p>
                            </div>
                            <div class="text-box">
                                <p>You can modify that copy to use key words that your contact used (uses). For instance, they might not use the word 'resilience' but 'sound security practice' - so use those words. They will resonate quicker with the reader. If they have mentioned specific areas, like a distributed workforce, then refer to that too. It can all fit into the template.
                                <br><br>
                                Then you need to personalise the outro with a call to action that feels not just urgent but also viable - i.e., talking/meeting with you on this subject is the logical next step.</p>
                            </div>
                            <div class="text-box text-box-bordered">
                                <h6>[PERSONALISED OUTRO / CTA]</h6>
                                <p><em>Let me know if you'd like to discuss this topic in more depth.</em>
                                <br>
                                Or
                                <br>
                                <em>I know you'd like to take decisive action on this issue, so let's meet/talk and see what we can do to make progress together</em></p>
                            </div>
                            <div class="text-box">
                                <p>Reference the personalized landing page, and also add an asset to the email that will provide greater depth and insight. Say you've attached it because you think it's just the thing for them right now and will help them think through their options.</p>
                            </div>
                            <div class="text-box text-box-bordered">
                                <p><em>Take a look at a web page that's tailored to your needs. And here's something that will clarify your thoughts further. Hope you find it interesting. Let me know. I'll be in touch. </em></p>
                                <h6>[ASSET LINK]</h6>
                                <h6>[CHALLENGER GUIDE]</h6>
                                <p><strong>The 7 key priorities for Hybrid IT security</strong>
                                <br>
                                From compliance to governance to knowing who's doing what and when, we outline the priorities you need to address.</p>
                            </div>
                            <div class="text-box">
                                <p>And then, of course, follow-up via social media or on the phone. </p>
                            </div>
                        </div>
                    </div>
                    
                    <div id="web" class="tab-content-container tabcontent">
                        <div class="col-12 midi">
                            <div class="text-box">
                                <h3>PERSONALIZING YOUR LANDING PAGE</h3>
                                <p>Hopefully, your contact will take a look at the landing page that's personalized to their needs. 
                                <br><br>     
                                When they do, it's important that this is gets to the point quickly in both the headline and the accompanying copy below it. Most people scan the top of a web page and only scroll down if they think it's got what they need right now. So, it's important to be clear that it DOES have what they need right now. 
                                <br><br>    
                                The main headline does a lot of that work:</p> 
                            </div>
                            <div class="text-box text-box-bordered centered">
                                <h6>[LANDING PAGE HEADLINE]</h6>
                                <h3>How BigCorp can stand strong in a world of threats</h3>
                            </div>
                            <div class="text-box">
                                <p>Then the body-copy below the headline should reference your contact and their concerns, just like in the email, but using slightly different language.</p>  
                            </div>
                            <div class="text-box text-box-bordered centered">
                                <h6>[LANDING PAGE INTRO COPY]</h6>
                                <h3>Leverage the power of Hybrid IT securely</h3>
                                <p>BigCorp's plans for the future are impressive. They're the key to success in uncertain times. Dealing with the security of distributed people and systems is a priority if the company is to overcome the broader economic issues relating to talent acquisition and supply-chain integrity. Fujitsu's approach enables your IT team to deliver that security as well as the benefits of Hybrid IT that you believe in, with efficiency AND security. 
                                <br><br>
                                On this page we outline what we can offer and how we focus on working closely with your team, as well as XXXX and XXXX your CTO and CSO, to achieve your short- and long-term goals of reducing costs by X% and boosting productivity by X%.</p>
                            </div>
                            <div class="text-box">
                                <p>As you can see, we've included specific names as well as goals/objectives that the company - and therefore Bob - is most interested in. You're telling the reader that, if they study this page and interact with the assets on it - they will get the knowledge and insights they need to achieve their objectives. 
                                <br><br>
                                Then make sure you attach the specific assets which help your pitch and, most importantly, provide information which helps Bob look good with HIS colleagues.</p>  
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--end fujitsu tab content-->

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
    <script src="Scripts/tabs.js"></script>
  </asp:Content>


