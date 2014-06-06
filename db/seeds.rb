# coding: utf-8

puts 'Seeding the database...'

[
  { pt: 'Charity Activities', en: 'Charity Activities' },
  { pt: 'construções', en: 'Constructions' },
  { pt: 'pão de cada dia', en: 'Daily Bread' },
  { pt: 'educação', en: 'Education' },
  { pt: 'Handicapped', en: 'Handicapped' },
  { pt: 'sem casa', en: 'Homeless' },
  { pt: 'endividado', en: 'Indebted' },
  { pt: 'Jobless', en: 'Jobless' },
  { pt: 'Livelihood', en: 'Livelihood' },
  { pt: 'assistência médica', en: 'Medical Aid' },
  { pt: 'Public Welfare', en: 'Public Welfare' },
  { pt: 'religioso', en: 'Religious' },
  { pt: 'others', en: 'Others' }
].each do |name|
   category = Category.find_or_initialize_by(name_pt: name[:pt])
   category.update_attributes({
     name_en: name[:en]
   })
 end

{
  company_name: 'SilverAlms',
  company_logo: 'http://localhost:3000/assets/logo@2x.png',
  host: 'localhost:3000',
  base_url: "http://localhost:3000",

  email_contact: 'contact@support.silveralms.com',
  email_payments: 'payments@support.silveralms.com',
  email_projects: 'projects@support.silveralms.com',
  email_system: 'system@support.silveralms.com',
  email_no_reply: 'no-reply@support.silveralms.com',
  facebook_url: "https://www.facebook.com/pages/SilverAlmsCom/1432743666987583",
  facebook_app_id: '686963018037797',
  twitter_url: 'http://twitter.com/silveralms',
  twitter_username: "silveralms",
  mailchimp_url: "http://ownmanager.us8.list-manage1.com/subscribe?u=9f171110a102fc24feed06f24&id=1df03ad4dd",
  mailchimp_api_key: '0fc042d8ac466115a48e779e04770258-us8',
  mailchimp_list_id: 'mailchimp_list_id_sample',
  mailchimp_headline_list_url: 'mailchimp_headline_list_url_sample',
  mandrill_user_name: 'mandrill_user_name_sample',
  mandrill: 'mandrill_sample',
  paypal_username: 'jtmsss_api1.yahoo.com',
  paypal_password: 'FCUBSHJJ9HBWTY2L',
  paypal_signature: 'A.A-8UOGDek6uyXy2N.a3h8WjyuHAaDBxo0OjvTdG5.1IMGIyaoxHJJf',
  authorizenet_login_id: 'authorizenet_login_id_sample',
  authorizenet_transaction_key: 'authorizenet_transaction_key_sample',
  catarse_fee: '0.10',
  support_forum: 'http://suport.silveralms.com',
  base_domain: 'localhost:3000',
  uservoice_secret_gadget: 't4YVh1DqPV4t99sFoAUv9wL2XY137LRjbD6gfyN0CtA',
  uservoice_key: 'CFL6GwuDuCmFpfAQhe8AA',
  aws_bucket: 'aws_bucket_sample',
  aws_access_key: 'aws_access_key_sample',
  aws_secret_key: 'aws_secret_key_sample',
  faq_url: 'http://silveralms.com/faq',
  feedback_url: 'http://support.silveralms.com',
  terms_url: 'http://silveralms.com/terms',
  privacy_url: 'http://silveralms.com/privacy',
  about_channel_url: 'http://silveralms.com/about',
  instagram_url: 'http://instagram.com/silveralms',
  blog_url: "http://blog.silveralms.com",
  github_url: 'http://github.com/jinutm',
  contato_url: 'http://support.silveralms.com'
}.each do |name, value|
   conf = Configuration.find_or_initialize_by(name: name)
   conf.update_attributes({
     value: value
   }) if conf.new_record?
end


OauthProvider.find_or_create_by!(name: 'facebook') do |o|
  o.key = '245932138941468'
  o.secret = '192c6ff9d43347513637eb06d1b40b4c'
  o.path = 'facebook'
end

OauthProvider.find_or_create_by!(name: 'twitter') do |o|
  o.key = '8aalVWQE4ySVisDNSJborpOfA'
  o.secret = 'hfSrM52SKLNXSVOremn9SYrXUJ56vJVrwKKnN0EmkipxAgMuKo'
  o.path = 'twitter'
end

OauthProvider.find_or_create_by!(name: 'google_oauth2') do |o|
  o.key = 'AIzaSyAJvy1sO-M3dfGjTjj3DgytxIqkdFD6PAU'
  o.secret = 'us3S7QJWjvCy85doErOYHzlG'
  o.path = 'google_oauth2'
end

OauthProvider.find_or_create_by!(name: 'linkedin') do |o|
  o.key = '972220b6-0fb2-4e78-83da-9d240b84cb3c'
  o.secret = 'a73c3def-9367-4db4-96f5-0c89160f6d7b'
  o.path = 'linkedin'
end

puts
puts '============================================='
puts ' Showing all Authentication Providers'
puts '---------------------------------------------'

OauthProvider.all.each do |conf|
  a = conf.attributes
  puts "  name #{a['name']}"
  puts "     key: #{a['key']}"
  puts "     secret: #{a['secret']}"
  puts "     path: #{a['path']}"
  puts
end


puts
puts '============================================='
puts ' Showing all entries in Configuration Table...'
puts '---------------------------------------------'

Configuration.all.each do |conf|
  a = conf.attributes
  puts "  #{a['name']}: #{a['value']}"
end

puts '---------------------------------------------'
puts 'Done!'




# Neighbor.ly

# User to receive company contact notifications
contact_user = User.create! email: Configuration[:email_contact], password: SecureRandom.hex(4)
contact_user.confirm! if contact_user

# User to receive new projects on draft notifications
project_user = User.create! email: Configuration[:email_projects], password: SecureRandom.hex(4)
project_user.confirm! if project_user
