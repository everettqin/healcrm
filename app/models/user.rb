class User < ActiveRecord::Base
   attr_accessible :name, :hash_password
   def self.try_to_login(name, password)
     hashed_password = hash_password(password || "")
     find(:first,
          :conditions => ["name = ? and hash_password = ?",
                          name, hashed_password])
   end

   def self.hash_password(password)
     Digest::SHA1.hexdigest(password)
   end

   def remember_token?
     remember_token_expires_at && Time.now.utc < remember_token_expires_at
   end

   def remember_me
     remember_me_for 2.weeks
   end

   def remember_me_for(time)
     remember_me_until time.from_now.utc
   end

   def remember_me_until(time)
     self.remember_token_expires_at = time
     self.remember_token            = encrypt("#{email}--#{remember_token_expires_at}")
     save(false)
   end
end
