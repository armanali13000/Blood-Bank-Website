<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="BLOODBANK INTERACTION SYSTEM">
    <meta name="author" content="VIVEK">
    
    <title>Home</title>
        
    <style>
            
             /* Container holding the image and the text */
.container1 {
    position: relative;
    text-align: center;
    
    color: white;
}

.centered {
    position: absolute;
    top: 35%;
    left: 60%;
    font-size: 80px;
    font-weight: 700;
    background-color: rgba(50,50,50,0.5);
    background-blend-mode: darken;
    
/*    transform: translate(-40%, -50%);*/
    
} 
            
            
            .container {
  max-width: 960px;
}

/*
 * Custom translucent site header
 */

.site-header {
  background-color: rgba(0, 0, 0, .85);
  -webkit-backdrop-filter: saturate(180%) blur(20px);
  backdrop-filter: saturate(180%) blur(20px);
}
.site-header a {
  color: #999;
  transition: ease-in-out color .15s;
}
.site-header a:hover {
  color: #fff;
  text-decoration: none;
}

/*
 * Dummy devices (replace them with your own or something else entirely!)
 */

.product-device {
  position: absolute;
  right: 10%;
  bottom: -30%;
  width: 300px;
  height: 540px;
  background-color: #333;
  border-radius: 21px;
  -webkit-transform: rotate(30deg);
  transform: rotate(30deg);
}

.product-device::before {
  position: absolute;
  top: 10%;
  right: 10px;
  bottom: 10%;
  left: 10px;
  content: "";
  background-color: rgba(255, 255, 255, .1);
  border-radius: 5px;
}

.product-device-2 {
  top: -25%;
  right: auto;
  bottom: 0;
  left: 5%;
  background-color: #e5e5e5;
}


/*
 * Extra utilities
 */

.border-top { border-top: 1px solid #e5e5e5; }
.border-bottom { border-bottom: 1px solid #e5e5e5; }

.box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }

.flex-equal > * {
  -ms-flex: 1;
  -webkit-box-flex: 1;
  flex: 1;
}
@media (min-width: 768px) {
  .flex-md-equal > * {
    -ms-flex: 1;
    -webkit-box-flex: 1;
    flex: 1;
  }
}

.overflow-hidden { overflow: hidden; }

            /*!
 * Bootstrap v4.0.0 (https://getbootstrap.com)
 * Copyright 2011-2018 The Bootstrap Authors
 * Copyright 2011-2018 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
            
        </style>
      <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
  
</head>

    
    
<body>
    <div class="bg-danger"> 
        <nav class="site-header sticky-top py-6">
        <div style="background-color:rgb(250,250,250)">
        <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="font-weight-bold py-3 d-none d-md-inline-block text-danger" href="#">HOME</a>
        <a class="font-weight-bold py-3 d-none d-md-inline-block text-danger" href="#">HOSPITAL</a>
        <a class="font-weight-bold py-3 d-none d-md-inline-block text-danger" href="#">BLOOD BANK</a> 
        <a class="font-weight-bold py-3 d-none d-md-inline-block text-danger" href="#">CAMP INFO</a> 
        <select class="font-weight-bold py-3 d-none d-md-inline-block text-danger " 
                style="width: auto; background: none; color: inherit;border: none;padding: 0;font: inherit;
                cursor: pointer;
                outline: inherit; -webkit-appearance: none;-moz-appearance: none;">
            <option hidden="">LOGIN / REGISTER</option>
            <option value="1" onclick="hospitalLogin()">HOSPITAL</option>
            <option value="2" onclick="bloodBanklogin()">BLOOD BANK</option>
            <option value="2" onclick="registration()">REGISTRATION</option>
        </select>
        <script type="text/javascript">
            function hospitalLogin() {
               window.location.href="loginHospital.jsp";
            }
            function bloodBanklogin(){
                window.location.href="loginBloodBank.jsp";
            }
            function registration(){
                window.location.href="registration.jsp";
            }
      </script>
        </div>
        </div>
    </nav>
    </div>
         
    <div class="container1">
        <img src="vbg.jpg" alt="Give Blood Give Life" style="width:100%; border-radius: 0px">
        <div class="centered">
        <h1 class="display-4 font-weight-bold">BLOOD DONATION</h1>
        <h1 class="lead font-weight-normal">"Donate your blood for a Reason,<br/> Let the reason to be Life"</h1>
        </div>
        </div> 
    <br/>
        
    <div class="row mx-3">       
       <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top border-dark" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="coverimage1.jpg" data-holder-rendered="true">
                <div class="card-body">
                    <p class="card-text ">Transfusion of blood every year saves Millions of life all over the world every year,Their are Millions of Blood Donors all over the world But still their are number of countries who dont have adequate number of blood suppliers and face the challenge of blood supply to the patients. However WHO is trying to make available adequate blood to the needy patients all over the world in order of this World Blood Donors Day is celebrated on 14th June every year to promote Blood Donation all over the world.</p>
                  <div class="d-flex justify-content-end align-items-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-sm btn-outline-secondary"><a href="http://www.who.int/campaigns/world-blood-donor-day/2018/event/en/">READ MORE</a></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="maxresdefault.jpg" data-holder-rendered="true">
                <div class="card-body">
                  <p class="card-text">Each year,thousands of people rely on receiving donated blood and blood products to stay alive. Certain injuries and illnesses can quickly cause a person's blood levels to drop.Without enough blood,they will not receive enough oxygen in their body, resulting in death.Many hospitals and medical centers utilize donated blood to save the lives of their patients.While a blood donation can be vital for some people. In this article, we take a look at the advantages and disadvantages of giving blood.</p>
                  <div class="d-flex justify-content-end align-items-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-sm btn-outline-secondary"><a href="https://www.medicalnewstoday.com/articles/319366.php">READ MORE</a></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" style="height: 225px; width: 100%; display: block;" src="ccc1.jpg" data-holder-rendered="true">
                <div class="card-body">
                  <p class="card-text">Blood is a body fluid in humans and other animals that delivers necessary substances such as nutrients and oxygen to the cells and transports metabolic waste products away from those same cells.The blood cells are mainly red blood cells (also called RBCs or erythrocytes), white blood cells and platelets .Red blood cells contain hemoglobin, an iron-containing protein, which facilitates oxygen transport by reversibly binding to this respiratory gas and greatly increasing its solubility in blood.</p>
                 <div class="d-flex justify-content-end align-items-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-sm btn-outline-secondary"><a href="https://en.wikipedia.org/wiki/Blood">READ MORE</a></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

  
    <footer class="px-5 py-5 bg bg-dark text-white">
      <div class="row">
        <div class="col-12 col-md bg-transparent">
          <svg  width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mb-2"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
          <large class="d-block mb-3 text-muted">&copy; 2018-2019 <br/> SDL PROJECT</large>
        </div>
        <div class="col-6 col-md font-weight-bold text-sm-left">
          <h5>FEATURES</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">DONATIONCAMP INFO.</a></li>
            <li><a class="text-muted" href="#">HOSPITAL INFO.</a></li>
            <li><a class="text-muted" href="#">BLOOD BANK INFO.</a></li>
            <li><a class="text-muted" href="#">BACK TO TOP</a></li>
          </ul>
        </div>
          <div class="col-6 col-md font-weight-bold text-sm-left">
            <h5>READ ABOUT</h5>
          <ul class="list-unstyled text-small">
              <li><a class="text-muted" href="https://en.wikipedia.org/wiki/Blood_type">BLOOD TYPE</a></li>
            <li><a class="text-muted" href="https://en.wikipedia.org/wiki/Blood_donation_in_India">BLOOD DONATIONS</a></li>
            <li><a class="text-muted" href="https://en.wikipedia.org/wiki/Blood_transfusion">BLOOD TRANSFUSION</a></li>
            <li><a class="text-muted" href="https://en.wikipedia.org/wiki/Blood_bank">BLOOD BANK</a></li>
          </ul>
        </div>
          
        <div class="col-6 col-md font-weight-bold text-sm-left">
          <h5>RESOURCES</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="http://www.naco.gov.in/state-wise-list-registeredlicensed-blood-banks">BLOODBANKS</a></li>
            <li><a class="text-muted" href="https://www.rch.org.au/bloodtrans/education_and_training/">EDUCATION</a></li>
            <li><a class="text-muted" href="http://naco.gov.in/national-blood-transfusion-council-nbtc-0">GOVERNMENT</a></li>
         <li><a class="text-muted" href="https://in.linkedin.com/jobs/blood-bank-jobs">BLOODBANK JOBS</a></li> 
          </ul>
        </div>
          
        <div class="col-6 col-md font-weight-bold text-sm-left">
          <h5>PROJECT TEAM</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted">VIVEK   </a></li>
              <li><a class="text-muted">SHIVAM </a></li>
            <li><a class="text-muted">MITALI </a></li>
            <li><a class="text-muted">NIRANJAN</a></li>
          </ul>
        </div>
      </div>
    </footer>    
            
    </div>
</body>
</html>