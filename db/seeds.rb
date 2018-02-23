Article.destroy_all
User.destroy_all
puts 'All articles & users destroy'


donatien = User.create!(email:"donatien@hotmail.fr", password:"password", admin: true, nom:"Rolland", prenom:"Donatien")
puts "Donatien created"

puts "Creating Articles"
article1 = Article.new(titre: "Traitement des eaux", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
url1 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974822/site-1707146_1920_dabz41.jpg"
article1.remote_photo_url = url1
puts "in process"
article1.user = donatien
article1.save!
puts "article1 created"

article2 = Article.new(titre: "Maçonnerie", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
url2 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974819/bulldozer-679989_1920_l9oyzt.jpg"
article2.remote_photo_url = url2
article2.user = donatien
article2.save!
puts "article2 created"

article3 = Article.new(titre: "Revetemment des surfaces publics", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
url3 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974820/dock-1673688_1920_nqly9v.jpg"
article3.remote_photo_url = url3
article3.user = donatien
article3.save!
puts "article3 created"

article4 = Article.new(titre: "Demolissement d'immeuble", description: "Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum. Lorem ipsum dolor sit amet, nam aliquip quaeque ne. Sint scribentur interpretaris id pro, molestie accusamus interesset sed ne, vidisse scripta ea eum.")
url4 = "http://res.cloudinary.com/djw9hvp9l/image/upload/v1516974822/site-1707146_1920_dabz41.jpg"
article4.remote_photo_url = url4
article4.user = donatien
article4.save!
puts "article4 created"

