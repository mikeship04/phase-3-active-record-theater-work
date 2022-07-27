class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.map do |a|
        a.actor
    end
  end

  def location
    auditions.map do |l|
        l.location
    end
  end

  def lead
    arr = self.auditions.filter {|i| i.hired == true }
     if arr.length == 0
        'no actor has been hired for this role'
     else
        arr.first
     end
    end

    def understudy
        arr = self.auditions.filter {|i| i.hired == true }
         if arr.length == 0
            'no actor has been hired for this role'
         else
            arr.second
         end
    end

end