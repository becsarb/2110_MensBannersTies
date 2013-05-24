/**
 * User: u029337
 * Date: 5/14/13
 * Time: 4:18 PM
 * Description: Mens Suiting Banner
 *
 * For the Intro image, the image map areas that are assigned class MensSuitIntroHoverable, are also
 * MenSuitIntroLinkable
 **/

var facebookUrl = 'http://www.facebook.com/sharer/sharer.php?s=100';
var facebookTitle = 'Men\'s Suit Manual - Fashion Index | Bloomingdale\'s';
var facebookSummary = 'Head to the new Suit Manual—because you need to rock a suit, not just wear one.'
	
var socFacebookLink = facebookUrl;
socFacebookLink += '&p[title]=' + encodeURIComponent(facebookTitle).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[summary]=' + encodeURIComponent(facebookSummary).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[url]=' + encodeURIComponent(mensCompleteUrl).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socFacebookLink += '&p[images][0]=' + facebookImage;

var twitterUrl = 'http://twitter.com/intent/tweet?source=webclient&text=';
var twitterTextParam = 'Head to the new Men\'s Suit Manual @Bloomingdales—where fit is king. http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177';
var socTwitterLink = twitterUrl;
socTwitterLink += encodeURIComponent(twitterTextParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");

var pinterestUrl = 'http://pinterest.com/pin/create/button/';
var pinterestUrlParam = 'http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177';
var pinterestDescriptionParam = 'Men\'s Suit Manual - Fashion Index | Bloomingdale\'s';
var socPinterestLink = pinterestUrl;
socPinterestLink += '?url=' + encodeURIComponent(pinterestUrlParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
socPinterestLink += '&description=' + encodeURIComponent(pinterestDescriptionParam).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");

/**
 *
 * Setup for lookbook plugin
 */

var crellookbooksopts = {
    'firstSlide': 'Mens2013Ties',
    'lastSlide': 'Mens2013StyleWithShirts',
    'topContainerDiv':  '#Mens2013TiesBanner',
    'hoverableSelector': '#Mens2013TiesBanner map .MensSuitIntroHoverable',
    'nonhoverableSelector': '#Mens2013TiesBanner map .MensSuitIntroNonHoverable',
    'rolloverClassName': 'Mens2013IntroRollovers',
    'overlayClassname': 'Mens2013IntroOverlays',
    'origOverlayClassname': 'Mens2013Overlay',
    'clickableClassName': 'Mens2013Clickable',
    'linkingClassName': 'Mens2013Linking',
    'ArrowClassName': 'Mens2013Arrow',
    'CoremetricsClassName': 'CoremetricksElement',
    'CoremetricsCategory': 'spring13_mens_suit_cat',
    'nonHoverableClassName': 'ClickNonHoverable',
    'shopLinkClassName': 'Mens2013ShopLink',
    'specialClassName1': 'Mens2013SlotMachine',
    'appendToDiv': '#Mens2013TiesBanner',
    'socFacebookLink': socFacebookLink,
    'socTwitterLink': socTwitterLink,
    'socPinterestLink': socPinterestLink,
    'socPinterestImages': [{'Mens2013Ties':pinterestImage1},
                           {'Mens2013StyleWithShirts':pinterestImage2}
                           ]
    }

/**
 *
 * Below vars are for the Slots/Spinit Functionality
 */
var total_pic_per_slot=15;
var currentindex=3;
var numberOfSpins = 1;

/**
 * Coremetrics 
 */


function mapDomToCoremetricsTags(){
	mapDomCmArray.push(new mapDomCmItem('Mens2013Ties', 'spring13_mens_suit_cat--ties'));
	mapDomCmArray.push(new mapDomCmItem('TiesToSuitManual', 'top_nav--the_suit_manual'));	
	mapDomCmArray.push(new mapDomCmItem('TiesFacebookHover', 'social-fb'));
	mapDomCmArray.push(new mapDomCmItem('TiesTwitterHover', 'social-twitter'));
	mapDomCmArray.push(new mapDomCmItem('TiesPinterestHover', 'social-pinterest'));
	mapDomCmArray.push(new mapDomCmItem('TiesTopTies', 'top_nav--ties'));	
	mapDomCmArray.push(new mapDomCmItem('TiesTopStyleWithShirts', 'top_nav--style'));	
	mapDomCmArray.push(new mapDomCmItem('TiesLeftArrowHover', 'left-arrow'));	
	mapDomCmArray.push(new mapDomCmItem('TiesRightArrowHover', 'right-arrow'));
	mapDomCmArray.push(new mapDomCmItem('TiesShopSkinny', 'shop--skinny'));
	mapDomCmArray.push(new mapDomCmItem('TiesShopClassic', 'shop--classic'));
	
	mapDomCmArray.push(new mapDomCmItem('Mens2013StyleWithShirts', 'spring13_mens_suit_cat--ties_match_play'));
	mapDomCmArray.push(new mapDomCmItem('TiesSWSToSuitManual', 'top_nav--the_suit_manual'));	
	mapDomCmArray.push(new mapDomCmItem('TiesSWSFacebookHover', 'social-fb'));
	mapDomCmArray.push(new mapDomCmItem('TiesSWSTwitterHover', 'social-twitter'));
	mapDomCmArray.push(new mapDomCmItem('TiesSWSPinterestHover', 'social-pinterest'));
	mapDomCmArray.push(new mapDomCmItem('TiesSWSTopTies', 'top_nav--ties'));	
	mapDomCmArray.push(new mapDomCmItem('TiesSWSTopStyleWithShirts', 'top_nav--style'));	
	mapDomCmArray.push(new mapDomCmItem('TiesSWSLeftArrowHover', 'left-arrow'));	
	mapDomCmArray.push(new mapDomCmItem('TiesSWSRightArrowHover', 'right-arrow'));
	
	mapDomCmArray.push(new mapDomCmItem('DSMatchSpinIt', 'spin_it-1'));
}

function initCoremetrics (){
	mapDomToCoremetricsTags();
	
	BLOOMIES.coremetrics.cmCreatePageviewTag('spring13_mens_suit--tiesbanner', crellookbooksopts.CoremetricsCategory, '', '');
}



$(function(){
    initCoremetrics();
    
    $(crellookbooksopts.hoverableSelector).crelInitRollovers(crellookbooksopts);

    $('.' + crellookbooksopts.linkingClassName).click(function(event){
        event.stopPropagation();
        if ($('.' + crellookbooksopts.specialClassName1).length > 0)
     	   $('.' + crellookbooksopts.specialClassName1).hide();
        MACYS.Faceted.facetCtrl.clearAll();
        var thisSlide = $(this).parent().parent()[0].id;
        var nextSlide = $(this).attr('link-to');
        if ($(this).hasClass(crellookbooksopts.CoremetricsClassName)){
        	BLOOMIES.coremetrics.cmCreatePageElementTag(mapDomToCoremetricksLookup($(this)[0].id), mapDomToCoremetricksLookup(thisSlide));
        }
        activeSlide = nextSlide;
        $(this).crelSlideNext(thisSlide, nextSlide);
    });
    
    $('.' + crellookbooksopts.clickableClassName).click(function(event){
    	event.stopPropagation();
        if ($('.' + crellookbooksopts.specialClassName1).length > 0)
     	   $('.' + crellookbooksopts.specialClassName1).hide();
        if ($('.' + crellookbooksopts.overlayClassname).length > 0)
            $('.' + crellookbooksopts.overlayClassname).remove();
       
        if ($(this).hasClass(crellookbooksopts.CoremetricsClassName))
    	   BLOOMIES.coremetrics.cmCreatePageElementTag(mapDomToCoremetricksLookup($(this)[0].id), crellookbooksopts.CoremetricsCategory);
       
        if ($(this).hasClass(crellookbooksopts.origOverlayClassname))
            $(this).crelOverlay(crellookbooksopts);
    });
    
    $(crellookbooksopts.nonhoverableSelector).click(function(){
        if ($('.' + crellookbooksopts.overlayClassname).length > 0)
            $('.' + crellookbooksopts.overlayClassname).remove();

        if ($('.' + crellookbooksopts.rolloverClassName).length > 0)
            $('.' + crellookbooksopts.rolloverClassName).remove();
    });

    $('.' + crellookbooksopts.nonHoverableClassName).mouseover(function(){

        if ($('.' + crellookbooksopts.rolloverClassName).length > 0)
            $('.' + crellookbooksopts.rolloverClassName).remove();
    });
    
    $('#DSMatchSpinIt').click(function(){
    	BLOOMIES.coremetrics.cmCreatePageElementTag(mapDomToCoremetricksLookup('DSMatchSpinIt'), crellookbooksopts.CoremetricsCategory);

    	$('#slot_machine').show();
    	
    	spin_button_click();

    	$('#DSMatchSpinItSlots').click(function(){
    		numberOfSpins++;
        	BLOOMIES.coremetrics.cmCreatePageElementTag('spin_it-' + numberOfSpins, mapDomToCoremetricksLookup('Mens2013DSMatch'));
        	spin_button_click();
    	});
    });
});


/**
 * Slot/Spinit functions below 
 */

function spin_button_click(){
    $("#slots_a").stop(true,true);
    $("#slots_b").stop(true,true);
    $("#slots_c").stop(true,true);
    $("#SlotsFullDescriptionA").stop(true,true);
    $("#SlotsFullDescriptionB").stop(true,true);
    $("#SlotsFullDescriptionC").stop(true,true);
    initiate_slots_for_animation($("#slots_a"),currentindex+0,(currentindex+1)%4+0);
    initiate_slots_for_animation($("#slots_b"),currentindex+4,(currentindex+1)%4+4);
    initiate_slots_for_animation($("#slots_c"),currentindex+8,(currentindex+1)%4+8);
    animate_slots($("#slots_a"),$("#SlotsFullDescriptionA"),(currentindex+1)%4+0);
    animate_slots($("#slots_b"),$("#SlotsFullDescriptionB"),(currentindex+1)%4+4);
    animate_slots($("#slots_c"),$("#SlotsFullDescriptionC"),(currentindex+1)%4+8);
    currentindex=(currentindex+1)%4;
}

function initiate_slots_for_animation(slot_dom, startindex, lastindex){
    slot_dom.empty();
    slot_dom.append("<div class='SpinningImages' id='SpinningImage"+(startindex+1)+"'/>");
    for(var i = 1; i < total_pic_per_slot-1; i++){
        var random_slot_picture_index = Math.floor(Math.random()*total_pic_per_slot);
        slot_dom.append("<div class='SpinningImages' id='SpinningImage"+random_slot_picture_index+"'/>");
    }
    slot_dom.append("<div class='SpinningImages' id='SpinningImage"+(lastindex+1)+"'/>");
}

function animate_slots(slot_dom, description_dom, lastindex){
    description_dom.fadeOut(100)

    var animation_duration = 2000+Math.round(Math.random()*1000);;
    slot_dom.css({
        "marginTop": "0px"
    });
    var marginTop =parseInt(slot_dom.css('marginTop'))- (((total_pic_per_slot-1)) * 237);

    slot_dom.animate(
        {'margin-top':marginTop+"px"},
        animation_duration,
        function(){
            description_dom.empty();
            description_dom.append("<div class='slotsFullDescription' id='FullDescription"+(lastindex+1)+"'/>");
            description_dom.fadeIn(500)
        });
}


