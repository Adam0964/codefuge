class User < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, 
                  :email, 
                  :password, 
                  :password_confirmation, 
                  :remember_me

  validates_presence_of :name, 
                        :email
                       

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :trackable, 
         :validatable
         # :omniauthable

  # include Authentication::ActiveRecordHelpers

  #has_many :comments
  # has_many :authorizations
  # has_many :services, :dependent => :destroy
  # mount_uploader  :avatar, :AvatarUploader , :ignore_integrity_errors
  # uploader_option :avatar

  def to_s
    name
  end

  def grant_access
      admin_user = User.new( :email    => 'admin@kodefuge.com', 
                             :password => 'XXXXXXXXXXX', 
                             :name     => 'Admin' 
                           )
      admin_user.update_attribute :admin, true 
      admin_user.save!
  end

  # def add_provider(auth_hash)
  # # Check if the provider already exists, so we don't add it twice
  #   unless authorizations.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
  #     Authorization.create :user     => self, 
  #                          :provider => auth_hash["provider"], 
  #                          :uid      => auth_hash["uid"]
  #   end
  # end
end

