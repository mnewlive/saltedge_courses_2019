require 'nokogiri'
require 'rubygems'
require 'open-uri'
require 'watir'
require 'pry'
require 'json'

class Account
  attr_accessor :name, :currency, :balance, :nature, :transactions
  def initialize(name, currency, balance, nature)
    @name = name
    @currency = currency
    @balance = balance
    @nature = nature
    @transactions = []
  end

end

class Transactions
  attr_accessor :date, :description, :amount, :account_name
  def initialize(date, description, amount, account_name)
    @date = date
    @description = description
    @amount = amount
    @account_name = account_name
  end
end

@available_accounts = []
@transactions_records = []

@url = "https://my.fibank.bg/oauth2-server/login?client_id=E_BANK"
Selenium::WebDriver::Chrome.driver_path="/usr/local/bin/chromedriver"
@browser = Watir::Browser.new :chrome
@browser.goto(@url)

#Clicks on demo
@browser.span(:xpath, "//span[@translate='LOGIN.DEMO']").when_present.click

#Changes language - Click English
@browser.span(:xpath, "//span[text()='English']").when_present.click

#Waiting for the elements to be present
@browser.element(:xpath, "//*[@id='dashboardAccounts']/tbody/tr").wait_until_present
@browser.wait(8000)

#Gets Credit (first section) accounts
credit_accounts = @browser.elements(:xpath, "//*[@id='dashboardAccounts']/tbody/tr")
@ca_index = 1
while @ca_index <= credit_accounts.count do
  account_name = @browser.element(:xpath, "(//*[@id='dashboardAccounts']/tbody/tr//span[@bo-bind='row.iban'])#{[@ca_index]}").wait_until_present.text
  account_currency = @browser.element(:xpath, "(//*[@id='dashboardAccounts']/tbody/tr//span[@bo-bind='row.ccy'])#{[@ca_index]}").text
  account_available_balance = @browser.element(:xpath, "(//*[@id='dashboardAccounts']/tbody/tr//span[@bo-bind='row.acyAvlBal | sgCurrency'])#{[@ca_index]}").text
  ca = Account.new(account_name, account_currency, account_available_balance,"Credit")
  @available_accounts << ca
  @ca_index += 1
end

#Waiting for the for elements to be present
@browser.element(:xpath, "//*[@id='dashboardDeposits']/tbody/tr").wait_until_present

#Gets Debit (second section) accounts
debit_accounts = @browser.elements(:xpath, "//*[@id='dashboardDeposits']/tbody/tr")
@da_index = 1
while @da_index <= debit_accounts.count do
  account_name = @browser.span(:xpath, "(//*[@id='dashboardDeposits']/tbody/tr//span[@bo-bind='row.iban'])#{[@da_index]}").wait_until_present.text
  account_currency = @browser.span(:xpath, "(//*[@id='dashboardDeposits']/tbody/tr//span[@bo-bind='row.ccy'])#{[@da_index]}").text
  account_available_balance = @browser.span(:xpath, "(//*[@id='dashboardDeposits']/tbody/tr//span[@bo-bind='row.acyAvlBal | sgCurrency'])#{[@da_index]}").text
  da = Account.new(account_name, account_currency, account_available_balance,"Debit"  )
  @available_accounts << da
  @da_index += 1
end

#Waiting for the elements to be present
@browser.element(:xpath, "//table[@id='lastFiveTransactions']//tbody/tr").wait_until_present

#Gets Last transactions payments
transactions = @browser.elements(:xpath, "//table[@id='lastFiveTransactions']//tbody/tr")
@tr_index = 1
while  @tr_index <= transactions.count do
  transaction_date = @browser.span(:xpath, "(//span[@bo-bind='row.dateTime | sgDate'])#{[@tr_index]}").wait_until_present.text
  transaction_description = @browser.p(:xpath, "(//p[@bo-if='!row.isLoadAsNew'])#{[@tr_index]}").text
  transaction_amount = @browser.span(:xpath, "(//span[contains(@bo-bind,'row.amount')])#{[@tr_index]}").text
  transaction_account_name = @browser.span(:xpath, "(//span[@bo-bind='row.trnAccount'])#{[@tr_index]}").text
  tr = Transactions.new(transaction_date, transaction_description, transaction_amount, transaction_account_name)
  @transactions_records << tr
  @tr_index += 1
end

#Adds transactions value if Account's Name equals to last five transacrions account
@available_accounts.each do |ac|
   @transactions_records.each do |tr|
     if(tr.account_name == ac.name)
       ac.transactions << tr
     end
   end
end


@json_hash = {"Accounts" => []}
@available_accounts.each do |e|
  ac_hash = Hash.new()
  ac_hash["name"] = e.name
  ac_hash["balance"] = e.balance
  ac_hash["currency"] = e.currency
  ac_hash["description"] = e.nature
  ac_hash["transactions"] =[]

  e.transactions.each do |tr|
    tr_hash = Hash.new()
    tr_hash["date"] = tr.date
    tr_hash["description"] = tr.description
    tr_hash["amount"] = tr.amount

    ac_hash["transactions"].push tr_hash
  end
  @json_hash["Accounts"].push ac_hash
end

File.open("/Users/nicolaiandriuta/saltedge2019/result.json", "w") do |f|
  f.write(@json_hash.to_json)
end

puts "success"

