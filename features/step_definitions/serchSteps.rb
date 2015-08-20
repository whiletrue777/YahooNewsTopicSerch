前提(/^ページを開く$/) do
 visit("http://news.yahoo.co.jp/")
end

ならば(/^ページタイトルが"([^"]*)"を表示すること$/) do |title|
 assert_title($title)
end

ならば(/^アクセスランキング一位のトピック名を取得すること$/) do
  puts all('span.ttl')[0].text(:all)
  puts Time.now.strftime("%X")+"\n"
end

