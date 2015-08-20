前提(/^ページを開く$/) do
 visit("http://news.yahoo.co.jp/")
end

ならば(/^ページタイトルが"([^"]*)"を表示すること$/) do |title|
 assert_title($title)
 file = File.open("../log.txt", "a")
 file.puts all('span.ttl')[0].text(:all)
 file.puts Time.now.strftime("%X")+"\n"
 file.close
end

