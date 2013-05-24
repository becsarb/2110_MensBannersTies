<!--TODO:  TO TURN THIS INTO JSP FILE GET RID OF DOCTYPE, AND TURN ALL PATHS INTO RELATIVES USING ${baseUrlAssets}/dyn_img/${dynImgFolder} -->
<style type="text/css">
    .Mens2013IntroRollovers {
        background: url('${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_TiesRolloversSprite.png') no-repeat;
    }

	#Mens2013DSMatchOverlay {
		position: absolute;
		top: 140px;
		left: 63px;
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_TiesSpinBgOverlay.jpg) no-repeat 0px 0px;
		width:616px;
		height:326px;
		z-index: 8000;
	}

	#DSMatchSpinItSlots{
		position: absolute;
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinImg.jpg) no-repeat 0px 0px;
		left:321px;
		top:118px;
	    width: 101px;
	    height:200px;
		z-index: 9000;
		cursor: pointer;
	}

	.SpinningImages {
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_DSMatchSpinShirts.jpg) no-repeat 0px 0px;
	    height:237px;
	}

	.slotsFullDescription {
	    background: url(${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_TiesMatchSpinDescriptions.png) no-repeat 0px 0px;
	    width:207px;
	    height:40px;
	    z-index: 9999;
	}
</style>

<script type="text/javascript">
	var mensCompleteUrl = 'http://www1.bloomingdales.com/shop/mens/the-suit-shop?id=1000177'
	var facebookImage = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Facebook.jpg';
	var pinterestImage1 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Ties_Pinterest1.jpg';	
	var pinterestImage2 = '${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Ties_Pinterest2.jpg';
	var activeSlide;
	var mapDomCmArray = [];

	/**
	 * Coremetrics 
	 */
	
	function mapDomCmItem (domElementID, cmLabel){
		this.domElementID = domElementID;
		this.cmLabel = cmLabel;
	}

	function mapDomToCoremetricksLookup(elementID){
		var retValue;
		$.each(mapDomCmArray, function(key, value){
			if (value.domElementID == elementID || '#' + value.domElementID == elementID) {
				retValue = value.cmLabel;
			}
		});
		return retValue;
	}
</script>

<link rel="stylesheet" type="text/css" href="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_tiesbannerstyles.css">
<script type="text/javascript" src="${baseUrlAssets}/web20/assets/script/bloomies/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/jquery.crellookbooks.js"></script>
<script type="text/javascript" src="${baseUrlAssets}/dyn_img/${dynImgFolder}/mens2013_tiesbanner.js"></script>

<div id="Mens2013TiesBanner">

    <div id="Mens2013Ties">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Ties_1.jpg" alt="Mens Suit Manual 2013 The Fit" usemap="#TiesMap" />
        <map id="TiesMap" name="TiesMap">
        
            <!-- Non-hoverables, non-linkables -->
            
            <area id="TiesNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="379,479,379,446,284,447,205,406,239,315,216,335,32,411,11,359,152,34,18,32,17,0,0,0,0,219,43,219,43,260,0,260,0,479" alt="Men's Dress Shirts:  The Fit" />
            
            <area id="TiesNL2" class="MensSuitIntroNonHoverable" shape="poly" coords="273,0,316,243,289,283,504,280,471,206,503,131,550,61,679,30,529,31,529,0" alt="Men's Dress Shirts:  The Fit" />
            
            <area id="TiesNL3" class="MensSuitIntroNonHoverable" shape="poly" coords="716,0,743,0,743,219,696,219,696,261,743,261,743,479,695,346,679,228,722,84" alt="Men's Dress Shirts:  The Fit" />

            <!-- Linkables and/or hoverables -->

            <area id="TiesToSuitManual" class="MensSuitIntroHoverable Mens2013Clickable CoremetricksElement" shape="rect" coords="24,0,158,29" alt="Men's Suit Manual Complete" href="/shop/mens/the-suit-shop?id=1000177"/>
            
            <area id="TiesFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="161,0,176,23" alt="Men's Ties:  Facebook" href="javascript:void(0);"/>

            <area id="TiesTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="181,0,199,23" alt="Men's Ties:  Twitter" href="javascript:void(0);"/>

            <area id="TiesPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="201,0,218,23" alt="Men's Ties:  Pinterest" href="javascript:void(0);"/>

            <area id="TiesTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="566,0,590,25" alt="Men's Ties" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="TiesTopStyleWithShirts" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="607,0,711,25" alt="Men's Ties Style With Shirts" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013StyleWithShirts"/>

            <area id="TiesLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="5,222,40,257" alt="Men's Ties Style With Shirts" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="TiesRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="700,222,734,258" alt="Men's Ties Style With Shirts" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <!-- Shop -->

            <area id="TiesShopSkinny" class="Mens2013Shop CoremetricksElement Mens2013ShopLink" shape="poly" coords="268,0,313,243,278,289,383,289,379,442,285,443,211,403,249,301,215,330,35,406,15,359,159,33,222,28,224,0" alt="Men's Ties:  Skinny" href="#!fn=TIE_TYPE%3DSkinny%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="TiesShopClassic" class="Mens2013Shop CoremetricksElement Mens2013ShopLink" shape="poly" coords="685,34,552,72,502,146,476,208,514,287,395,293,393,442,475,445,479,406,582,406,619,479,743,479,689,348,677,244,723,85" alt="Men's Ties:  Classic" href="#!fn=TIE_TYPE%3DClassic%26sortBy%3DORIGINAL%26productsPerPage%3D96"/>
        </map>
    </div>


    <div id="Mens2013StyleWithShirts">
        <img src="${baseUrlAssets}/dyn_img/${dynImgFolder}/Mens2013_Ties_2.jpg" alt="Mens Suits 2013 The Style" usemap="#TiesSWSMap" />
        <map id="TiesSWSMap" name="TiesSWSMap">
            <!-- Non-hoverables, non-linkables -->
            <area id="TiesSWSNL1" class="MensSuitIntroNonHoverable" shape="poly" coords="0,0,23,0,23,30,221,30,221,0,533,0,533,30,715,30,715,0,743,0,743,120,425,120,425,101,316,101,316,120,0,120" alt="Men's Dress Shirts:  The Style" />

            <area id="TiesSWSNL2" class="MensSuitIntroNonHoverable" shape="poly" coords="0,140,316,140,316,150,425,150,425,140,743,140,743,219,695,219,695,262,743,262,743,479,0,479,0,215,43,215,43,260,0,260" alt="Men's Dress Shirts:  The Style" />

            <!-- Linkables and/or hoverables -->


            <area id="TiesSWSToSuitManual" class="MensSuitIntroHoverable Mens2013Clickable CoremetricksElement" shape="rect" coords="22,0,158,29" alt="Men's Suit Manual Complete:  The Fit" href="/shop/mens/the-suit-shop?id=1000177"/>
            
            <area id="TiesSWSFacebook" class="MensSuitIntroHoverable Mens2013Clickable SocFacebook CoremetricksElement" shape="rect" coords="0,140,316,140,316,150,425,150,425,140,743,140,743,215,696,215,696,262,743,262,743,479,0,479,0,263,45,263,45,217,0,217" coords="161,0,176,23" alt="Men's Dress Shirts:  The Fit Facebook" href="javascript:void(0);"/>

            <area id="TiesSWSTwitter" class="MensSuitIntroHoverable Mens2013Clickable SocTwitter CoremetricksElement" shape="rect" coords="181,0,199,23" alt="Men's Dress Shirts:  The Fit Twitter" href="javascript:void(0);"/>

            <area id="TiesSWSPinterest" class="MensSuitIntroHoverable Mens2013Clickable SocPinterest CoremetricksElement" shape="rect" coords="201,0,218,23" alt="Men's Dress Shirts:  The Fit Pinterest" href="javascript:void(0);"/>

            <area id="TiesSWSTopTies" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="566,0,590,25" alt="Men's Dress Shirts:  Fit" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013Ties"/>

            <area id="TiesSWSTopStyleWithShirts" class="MensSuitIntroNonHoverable Mens2013Linking CoremetricksElement" shape="rect" coords="607,0,711,25" alt="Men's Dress Shirts:  Style" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96" link-to="Mens2013StyleWithShirts"/>

            <area id="TiesSWSLeftArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="5,222,40,257" alt="Men's Dress Shirts:  The Fit" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="TiesSWSRightArrow" class="MensSuitIntroHoverable Mens2013Clickable Mens2013Arrow CoremetricksElement" shape="rect" coords="700,222,734,258" alt="Men's Dress Shirts:  The Fit" href="#!fn=sortBy%3DORIGINAL%26productsPerPage%3D96"/>

            <area id="DSMatchSpinIt" class="MensSuitIntroHoverable ClickNonHoverable Mens2013SlotMachine CoremetricksElement" shape="rect" coords="320,117,422,148" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="DSMatchStripe" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="63,127,266,445" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="DSMatchSolid" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="273,142,470,445" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

            <area id="DSMatchCheck" class="MensSuitIntroHoverable Mens2013Clickable ClickNonHoverable CoremetricksElement Mens2013ShopLink" shape="rect" coords="485,127,680,445" alt="Men's Suit Manual:  Dress Shirts Match" href="javascript:void(0);"/>

        </map>
    </div>
    
    <div id="slot_machine" class="Mens2013SlotMachine">
		<div id="Mens2013DSMatchOverlay"></div>
		<div id="DSMatchSpinItSlots" ></div>
		<div id="SlotsContainer">
				<div class="slots"  id="slots_a"></div>
				<div class="slots"  id="slots_b"></div>
				<div class="slots"  id="slots_c"></div>
		</div>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DStripe%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleA" class="slotsFullDescription"></div></a>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DSolid%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleB" class="slotsFullDescription"></div></a>
		<a href="#!fn=MENS_DRESS_SHIRT_TYPE%3DCheck%26MENS_SUIT_SHOP_TYPE%3DDress%2520Shirts%26sortBy%3DORIGINAL%26productsPerPage%3D96"><div id="SlotsDescriptionTitleC" class="slotsFullDescription"></div></a>
		<div id="SlotsFullDescriptionA"></div>
		<div id="SlotsFullDescriptionB"></div>
		<div id="SlotsFullDescriptionC"></div>
	</div>
</div>

