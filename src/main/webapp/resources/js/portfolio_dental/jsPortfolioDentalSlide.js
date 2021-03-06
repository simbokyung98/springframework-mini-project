  //current position
  var pos = 0;
//number of slides
  var totalSlides = $('#slider_wrap ul li').length;
  //get the slide width
  var sliderWidth = $('#slider_wrap').width();


  $(document).ready(function(){
    
    
    /*****************
    BUILD THE SLIDER
    *****************/
    //set width to be 'x' times the number of slides
    $('#slider_wrap ul#slider').width(sliderWidth*totalSlides);
    
      //next slide  
    $('#next').click(function(){
      slideRight();
    });
    
    //previous slide
    $('#previous').click(function(){
      slideLeft();
    });
    
    
    
    /*************************
    //*> OPTIONAL SETTINGS
    ************************/
    //automatic slider
    var autoSlider = setInterval(slideRight, 3000);
    
    //for each slide 
    $.each($('#slider_wrap ul li'), function() { 

      //create a pagination
      var li = document.createElement('li');
      $('#pagination_wrap ul').append(li);    
    });
    
    //counter
    countSlides();
    
    //pagination
    pagination();
    
    //hide/show controls/btns when hover
    //pause automatic slide when hover
    $('#slider_wrap').hover(
      function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
      function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
    );
    
    

  });//DOCUMENT READY
    


  /***********
  SLIDE LEFT
  ************/
  function slideLeft(){
    pos--;
    if(pos==-1){ pos = totalSlides-1; }
    $('#slider_wrap ul#slider').css('left', -(sliderWidth*pos));  
    
    //*> optional
    countSlides();
    pagination();
  }


  /************
  SLIDE RIGHT
  *************/
  function slideRight(){
    pos++;
    if(pos==totalSlides){ pos = 0; }
    $('#slider_wrap ul#slider').css('left', -(sliderWidth*pos)); 
    
    //*> optional 
    countSlides();
    pagination();
  }



    
  /************************
  //*> OPTIONAL SETTINGS
  ************************/
  function countSlides(){
    $('#counter').html(pos+1 + ' / ' + totalSlides);
  }

  function pagination(){
    $('#pagination_wrap ul li').removeClass('active');
    $('#pagination_wrap ul li:eq('+pos+')').addClass('active');
  }