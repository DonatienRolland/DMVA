Article.destroy_all
puts 'All articles destroy'

article1 = Article.new(titre: "Traitement des eaux", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
puts "article1 created"
article2 = Article.new(titre: "Maçonnerie", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
puts "article2 created"
article3 = Article.new(titre: "Revetemment des surfaces publics", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
puts "article3 created"
article4 = Article.new(titre: "Demolissement d'immeuble", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
puts "article4 created"
article5 = Article.new(titre: "Chantier du jour", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. ")
puts "article5 created"

url1 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974822/site-1707146_1920_dabz41.jpg"
article1.remote_photo_url = url1
article1.save
url2 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974819/bulldozer-679989_1920_l9oyzt.jpg"
article2.remote_photo_url = url2
article2.save
url3 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974820/dock-1673688_1920_nqly9v.jpg"
article3.remote_photo_url = url3
article3.save
url4 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974822/site-1707146_1920_dabz41.jpg"
article4.remote_photo_url = url4
article4.save
url5 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974820/construction-worker-569149_1920_kvrw5k.jpg"
article5.remote_photo_url = url5
article5.save
