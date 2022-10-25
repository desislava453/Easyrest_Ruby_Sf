# frozen_string_literal: true

# This class Owner is for owner page.
class Owner
  ALL_BTN = { css: "[href*='profile/current_orders']" }.freeze
  DRAFT_BTN = { css: "[href*='profile/current_orders/Draft']" }.freeze
  WAITING_CONFIRM_BTN = { css: "[href*='profile/current_orders/Waiting for confirm']" }.freeze
  ACCEPTED_BTN = { css: "[href*='profile/current_orders/Accepted']" }.freeze
  ASSIGNED_WAITER_BTN = { css: "[href*='profile/current_orders/Assigned waiter']" }.freeze
  IN_PROGRESS_BTN = { css: "[href*='profile/current_orders/In progress']" }.freeze
  ARROW_DOWN_BTN = { xpath: '//div/main/div/div/div/div[1]/div/div/div[1]/div[1]/div[2]/span[1]/svg' }.freeze
  ARROW_SIDE_BTN = { xpath: '/html/body/div/main/div/div/div/div[1]/div/header/div/div[2]/button/svg' }.freeze
  DELETE_DRAFT_BTN = { xpath: "//span[contains(@class, 'MuiButton-label')][contains(., 'Delete')]" }.freeze
  DECLINE_ORDER_BTN = { xpath: "//span[contains(@class, 'MuiButton-label')][contains(., 'Decline')]" }.freeze
  MY_RESTAURANTS_BTN = { css: "[href*='profile/restaurants']" }.freeze
  MY_PERSONAL_INFO_BTN = { css: "[href*='profile/personal_info']" }.freeze
  MY_CURRENT_ORDERS_BTN = { css: "[href*='profile/current_orders']" }.freeze
  MY_ORDER_HISTORY_BTN = { css: "[href*='profile/order_history']" }.freeze
  ADD_RESTAURANT_BTN = { xpath: "//*[@title='Add restaurant']" }.freeze
  REST_NAME_FLD = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[1]/div/div/input' }.freeze
  REST_ADDRESS_FLD = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[2]/div/div/input' }.freeze
  REST_PHONE_FLD = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[3]/div/div/input' }.freeze
  REST_PREVIEW_TXT_FLD = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[4]/div/div/textarea' }.freeze
  REST_TAG_BTN = { xpath: '//*[@id="select-tags"]' }.freeze
  REST_DESCRIPTION_FLD = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[2]/div/div/div/div' }.freeze
  HEADING_BTN = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[1]/div[1]/button[1]' }.freeze
  BLOCKQUOTE_BTN = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[1]/div[1]/button[2]' }.freeze
  UL_BTN = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[1]/div[1]/button[3]' }.freeze
  OL_BTN = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[1]/div[1]/button[4]' }.freeze
  BOLD_BTN = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[1]/div[2]/button[1]' }.freeze
  ITALIC_BTN = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[1]/div[2]/button[2]' }.freeze
  UNDERLINE_BTN = { xpath: '//div[1]/div[3]/div/div/div/div[2]/form/div/div[7]/div/div[1]/div[2]/button[3]' }.freeze
  ADD_REST_BTN = { xpath: "//span[contains(@class, 'MuiButton-label')][contains(., 'Add')]" }.freeze
  CANCEL_REST_BTN = { xpath: "//span[contains(@class, 'MuiButton-label')][contains(., 'Cancel')]" }.freeze

  def initialize(driver)
    @driver = driver
  end

  def click_all_btn
    @driver.find_element(ALL_BTN).click
  end

  def click_draft_btn
    @driver.find_element(DRAFT_BTN).click
  end

  def click_waiting_confirm_btn
    @driver.find_element(WAITING_CONFIRM_BTN).click
  end

  def click_accepted_btn
    @driver.find_element(ACCEPTED_BTN).click
  end

  def click_assigned_waiter_btn
    @driver.find_element(ASSIGNED_WAITER_BTN).click
  end

  def click_in_progress_btn
    @driver.find_element(IN_PROGRESS_BTN).click
  end

  def click_arrow_down_btn
    @driver.find_element(ARROW_DOWN_BTN).click
  end

  def click_arrow_side_btn
    @driver.find_element(ARROW_SIDE_BTN).click
  end

  def click_delete_draft_btn
    @driver.find_element(DELETE_DRAFT_BTN).click
  end

  def click_decline_order_btn
    @driver.find_element(DECLINE_ORDER_BTN).click
  end

  def click_my_restaurants_btn
    @driver.find_element(MY_RESTAURANTS_BTN).click
  end

  def click_my_personal_info_btn
    @driver.find_element(MY_PERSONAL_INFO_BTN).click
  end

  def click_my_current_orders_btn
    @driver.find_element(MY_CURRENT_ORDERS_BTN).click
  end

  def click_my_order_history_btn
    @driver.find_element(MY_ORDER_HISTORY_BTN).click
  end

  def click_add_restaurant_btn
    @driver.find_element(ADD_RESTAURANT_BTN).click
  end

  def type_rest_name(value)
    @driver.find_element(REST_NAME_FLD).send_keys(value)
  end

  def type_rest_address(value)
    @driver.find_element(REST_ADDRESS_FLD).send_keys(value)
  end

  def type_rest_phone(value)
    @driver.find_element(REST_PHONE_FLD).send_keys(value)
  end

  def type_rest_preview_txt(value)
    @driver.find_element(REST_PREVIEW_TXT_FLD).send_keys(value)
  end

  def click_rest_tag_fld
    @driver.find_element(REST_TAG_BTN).click
  end

  def type_rest_description(value)
    @driver.find_element(REST_DESCRIPTION_FLD).send_keys(value)
  end

  def click_heading_btn
    @driver.find_element(HEADING_BTN).click
  end

  def click_blockquote_btn
    @driver.find_element(BLOCKQUOTE_BTN).click
  end

  def click_ul_btn
    @driver.find_element(UL_BTN).click
  end

  def click_ol_btn
    @driver.find_element(OL_BTN).click
  end

  def click_bold_btn
    @driver.find_element(BOLD_BTN).click
  end

  def click_italic_btn
    @driver.find_element(ITALIC_BTN).click
  end

  def click_underline_btn
    @driver.find_element(UNDERLINE_BTN).click
  end

  def click_add_rest_btn
    @driver.find_element(ADD_REST_BTN).click
  end

  def click_cancel_rest_btn
    @driver.find_element(CANCEL_REST_BTN).click
  end

  def rest_created_msg
    @driver.find_element(xpath: "//*[contains(text(),'Restaurant was successfully created')]")
  end

  def watch_menu_btn
    @driver.find_element(xpath: "//*[contains(text(),'Watch Menu')]")
  end

  def history_tab
    @driver.find_element(css: "[href*='/profile/order_history/History']")
  end

  def waiting_for_confirm_tab
    @driver.find_element(css: "[href*='profile/current_orders/Waiting for confirm']")
  end

  def name_label
    @driver.find_element(xpath: "//*[contains(text(),'Jason Brown')]")
  end

  def create_restaurant(rest_name, rest_address, rest_phone, rest_preview_txt, rest_description)
    click_add_restaurant_btn
    sleep(1)
    type_rest_name(rest_name)
    type_rest_address(rest_address)
    type_rest_phone(rest_phone)
    type_rest_preview_txt(rest_preview_txt)
    type_rest_description(rest_description)
    click_add_rest_btn
  end
end
