class Role < ActiveRecord::Base

    has_many :auditions

    def actors
        self.auditions.map { |audition| audition.actor }
    end

    def locations
        self.auditions. map do |audition|
            audition.location
        end
    end

    def lead
        lead_role = auditions.find_by(hired: true)
        lead_role ? lead_role : 'no actor has been hired for this role'
    end

    def understudy
        lead_understudy = auditions.where(hired: true)
        lead_understudy ? lead_understudy.last : 'no actor has been hired for understudy for this role'
    end

end