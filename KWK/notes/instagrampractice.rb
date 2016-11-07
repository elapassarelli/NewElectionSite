class InstagramBio
  def initialize(bio_name, bio_content, bio_link)
  @bio_name = bio_name
  @bio_contentmessage = bio_content
  @bio_link = bio_link
  end

attr_accessor :bio_name, :bio_contentmessage
attr_accessor :bio_link



end

class InstagramProfile
  def initialize(username, amount_of_pictures, number_followers, number_following, instagrambio, boolean_private)
    @username = "@" + username
    @amount_of_pictures = amount_of_pictures
    @number_followers = number_followers
    @number_following = number_following
    @InstagramBio = instagrambio
    @boolean_private = boolean_private
end
attr_accessor :amount_of_pictures
attr_accessor :number_followers
attr_accessor :number_following
attr_accessor :InstagramBio
attr_accessor :boolean_private


end

Tipologybio = InstagramBio.new("THIS IS YOUR BLOG.", "blog for youth! currently @ #kodewithklossy. looking for writers and photographers!", "www.tipologyblog.com")
Tipology = InstagramProfile.new("tipology", "284", 15600, 86, Tipologybio, false)

puts Tipology.InstagramBio.class
puts Tipology.class
puts Tipology.number_followers
puts Tipology.InstagramBio.bio_link
