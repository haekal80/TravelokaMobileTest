*** Settings ***
Library            AppiumLibrary
Resource            ../page/homepage.robot

*** Variables ***
${pick up location field}    id=com.traveloka.android.rental_impl:id/selector_pickup_location
${pick up date time field}    id=com.traveloka.android.rental_impl:id/selector_rental_start_date
${drop off time field}    id=com.traveloka.android.rental_impl:id/button_end_time
${pick up time}                id=com.traveloka.android.rental_impl:id/button_start_time
${drop off time}                id=com.traveloka.android.rental_impl:id/button_end_time
${done button}                id=com.traveloka.android.rental_impl:id/button_done
${search car button}            id=com.traveloka.android.rental_impl:id/button_rental_search
${car card}                    //*[@resource-id='com.traveloka.android.rental_impl:id/layout_rental_item' and @index='0']
${continue button}            id=com.traveloka.android.rental_impl:id/button_action
${pick up location card}        id=com.traveloka.android.rental_impl:id/container
${drop off location card}        id=com.traveloka.android:id/design_bottom_sheet
${select button}                id=com.traveloka.android.rental_impl:id/button_action
${select drop off location button}    //*[@resource-id='com.traveloka.android.rental_impl:id/button_select' and @text='Select Drop-off Location']
${drop off car card}            //*[@class='android.widget.RelativeLayout' and @index='2']
${contact details card}        accessibility id=trip_booking_view_contactemptycontainer
${driver details card}        accessibility id=trip_booking_view_traveleremptycontainer
${full name field}            //*[@class='android.widget.EditText' and @index='0' and @text='']
${mobile number field}        //*[@class='android.widget.EditText' and @index='1']
${email field}                //*[@class='android.widget.EditText' and @index='2']
${save button rental}        id=com.traveloka.android.rental_impl:id/button_save
${save button trip}                id=com.traveloka.android.trip_impl:id/button_save
${title dropdown}            //*[@class='android.widget.Spinner']
${other location text}        //*[@text='Other Location']
${same pick up text}            //*[@text='Same as Pick-up Location']
${full name driver field}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText
${mobile number driver field}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText[2]
${continue button view}            id=com.traveloka.android.trip_impl:id/text_view_see_below_view
${special request card}        //*[@resource-id='com.traveloka.android.trip_impl:id/layout_root']/descendant::*[@text='Add a special request']
${special request text field}        id=com.traveloka.android.rental_impl:id/edit_text_special_request
${rental requirements card}        //*[@resource-id='com.traveloka.android.trip_impl:id/layout_root']/descendant::*[@text='Tap to check the requirements.*']
${check all checkbox}            //*[@class='android.view.ViewGroup'and @index='0']/child::*[@class='android.widget.CheckBox']
${continue button trip}        id=com.traveloka.android.trip_impl:id/button_continue
${confirmation continue button}    id=com.traveloka.android:id/widget_button_blue
${pay now button}                id=com.traveloka.android:id/button_pay_now
${pull bar}                    id=com.traveloka.android:id/pull_bar
${radio button driver}        //*[@resource-id='com.traveloka.android.rental_impl:id/radio_button_group']/child::*[@index='0']
${radio button not driver}        //*[@resource-id='com.traveloka.android.rental_impl:id/radio_button_group']/child::*[@index='1']

*** Test Cases ***
Soal No 3
    Open Application    http://localhost:4723/wd/hub    platformName=Android    udid=eabb8748    platformVersion=13    automationName=UiAutomator2    deviceName=Haekal Poco F3    appPackage=com.traveloka.android    appActivity=com.traveloka.android.appentry.splash.SplashActivity    noReset=true    newCommandTimeout=999999
    Click object "Cars" text
    Click object "Without Driver" text
    Click object field    ${pick up location field}
    Click object "Jakarta" text
    Click object field    ${pick up date time field}
    Select date    2 days
    Select date    5 days
    Click object field    ${drop off time field}
    Swipe By Percent    30    85    30    75    
    Click object "Done" text
    Click object field    ${done button}
    Click object field    ${search car button}
    Click object field    ${car card}
    Click object field    ${car card}
    Click object field    ${continue button}
    Click object "Rental Office" text
    Click object field    ${pick up location card} 
    Click object field    ${select button} 
    Click object field    ${select drop off location button} 
    Swipe By Percent    50    70    50    55    
    Click object "Other Location" text
    Click object field    ${drop off car card} 
    Input text notes field    pickup    catatan pickup
    Input text notes field    dropoff    catatan dropoff
    Click object field    ${continue button}
    Click object field    ${radio button not driver}
    Click object field    ${title dropdown}
    Click object "Mr." text
    Input text field    ${full name driver field}       Muhammad Haekal Driver
    Input text field    ${mobile number driver field}      85240580241
    Click object field    ${save button trip}
    Click object field    ${continue button view}
    Click object field    ${special request card}
    Input Text    ${special request text field}      ini spesial request
    Click object field    ${save button rental}
    Click object field    ${rental requirements card}
    Click object field    ${check all checkbox}
    Swipe By Percent    50    70    50    35    
    Click object field    ${save button rental}
    Swipe By Percent    50    70    50    35    
    Click object field    ${continue button trip}
    Click object field    ${confirmation continue button}
    Click object field    ${pay now button}
