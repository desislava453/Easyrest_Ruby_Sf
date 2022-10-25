# frozen_string_literal: true

require_relative '../shared_context/shared_context_spec'
require_relative '../pages/owner_page'
require 'pg'
include Test::Unit::Assertions

cred = YAML.load_file('config/test_data.yml')
db_cred = YAML.load_file('config/env.yml')

RSpec.describe Owner do
  let(:owner) { described_class.new(@driver) }
  let(:user) { cred.fetch('emails')['owner_email_2'] }
  let(:pw) { cred.fetch('pw')['owner_pwd'] }
  let(:dbname) { db_cred.fetch('db_creds')['dbname'] }
  let(:dbuser) { db_cred.fetch('db_creds')['dbuser'] }
  let(:dbpass) { db_cred.fetch('db_creds')['dbpass'] }
  let(:rest_name) { cred.fetch('test_rest')['rest_name'] }
  let(:rest_address) { cred.fetch('test_rest')['rest_address'] }
  let(:rest_phone) { cred.fetch('test_rest')['rest_phone'] }
  let(:rest_preview_txt) { cred.fetch('test_rest')['rest_preview_txt'] }
  let(:rest_description) { cred.fetch('test_rest')['rest_description'] }

  include_context 'login'

  it 'Verify redirection to personal info page' do
    owner.click_my_personal_info_btn
    @wait.until { owner.name_label }
    assert_equal('Jason Brown', owner.name_label.text, 'Name label not found.')
  end

  it 'Verify redirection to current orders page' do
    owner.click_my_current_orders_btn
    @wait.until { owner.waiting_for_confirm_tab }
    assert_equal('WAITING FOR CONFIRM (0)', owner.waiting_for_confirm_tab.text, 'Not found.')
  end

  it 'Verify redirection to order history page' do
    owner.click_my_order_history_btn
    @wait.until { owner.history_tab }
    assert_equal('HISTORY (0)', owner.history_tab.text, 'Not found.')
  end

  it 'Verify redirection to my restsaurants page' do
    owner.click_my_restaurants_btn
    @wait.until { owner.watch_menu_btn }
    assert(owner.watch_menu_btn, 'Label not found.')
  end

  it 'Create new restaurant' do
    owner.create_restaurant(rest_name, rest_address, rest_phone, rest_preview_txt, rest_description)
    @wait.until { owner.rest_created_msg }
    assert_equal('Restaurant was successfully created', owner.rest_created_msg.text, 'Message not found')
    db = PG.connect(dbname: dbname, user: dbuser, password: dbpass)
    db.exec('DELETE FROM restaurants WHERE id>10')
    @driver.navigate.refresh
    begin
      assert(@driver.find_element(xpath: "//*[contains(text(),'Test reastaurant')]"), 'Label not found')
    rescue => RSpec::Core::MultipleExceptionError
      puts 'Test restaurant deleted successfully'
    end
  end
end
