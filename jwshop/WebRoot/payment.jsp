<jsp:include page="header.jsp"></jsp:include>
<head>
 <br/>
<div style="font-family: verdana;">
 <form action="thanks.jsp" method="post"><h1 align="center">PAYMENT</h1> 
 
 <div style="height: 350px; text-align: center;margin-top: 50px;">
   
        <ul class="form-list" id="payment_form_transact">
    
        <label for="transact_cc_type" class="required"><em><li>*</em>Credit Card Type</label><br/>
       <div class="input-box"><br/>
            <select id="transact_cc_type" name="payment[cc_type]" class="required-entry validate-cc-type-select" autocomplete="off" required>
                <option value="">--Please Select--</option>
                                        <option value="AE">American Express</option>
                            <option value="VI">Visa</option>
                            <option value="MC">MasterCard</option>
                            <option value="DI">Discover</option>
                        </select>
        </div><br/>
    </li>
    <li>
    
        <label for="transact_cc_number" class="required"><em>*</em>Credit Card Number</label>
        <div class="input-box">
            <input type="text" id="transact_cc_number" name="payment[cc_number]"  title="Credit Card Number" class="input-text validate-cc-number validate-cc-type" value="" autocomplete="off" pattern=[0-9]{16} maxlength="16" required>
        </div><br/>
    </li>
    <li id="transact_cc_type_exp_div">
        <label for="transact_expiration" class="required"><em>*</em>Expiration Date</label>
        <div class="input-box"><br/>
            <div class="v-fix">
                <select id="transact_expiration" name="payment[cc_exp_month]" class="month validate-cc-exp required-entry" autocomplete="off" required>
                                                    <option value="" selected="selected">Month</option>
                                    <option value="1">01 - January</option>
                                    <option value="2">02 - February</option>
                                    <option value="3">03 - March</option>
                                    <option value="4">04 - April</option>
                                    <option value="5">05 - May</option>
                                    <option value="6">06 - June</option>
                                    <option value="7">07 - July</option>
                                    <option value="8">08 - August</option>
                                    <option value="9">09 - September</option>
                                    <option value="10">10 - October</option>
                                    <option value="11">11 - November</option>
                                    <option value="12">12 - December</option>
                                </select>
            </div><br/>
            <div class="v-fix">
                                <select id="transact_expiration_yr" name="payment[cc_exp_year]" class="year required-entry" autocomplete="off" required>
                                    <option value="" selected="selected">Year</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                    <option value="2023">2023</option>
                                    <option value="2024">2024</option>
                                    <option value="2025">2025</option>
                                </select>
            </div><br/>
        </div>
    </li>
            <li id="transact_cc_type_cvv_div">
        <label for="transact_cc_cid" class="required"><em>*</em>Card Verification Number</label>
        <div class="input-box">
            <div class="v-fix">
                <input type="text" title="Card Verification Number" pattern=[0-9]{3} maxlength="3" class="input-text cvv required-entry validate-cc-cvn" id="transact_cc_cid" name="payment[cc_cid]"  value="" autocomplete="off"   required></div></div><br/>
<strong><font size="5"><input type="submit" value="pay now"></font></strong>
    <br/><br/>
    </ul>
</ul></form></div></head></br></br></br> </br></br>
<jsp:include page="footer.jsp"></jsp:include>
