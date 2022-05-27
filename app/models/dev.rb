class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one(item_name)
        self.freebies.select {|freeb| freeb.item_name==item_name} == [] ? false : true
    end

    def give_away(dev, freebie)
        if self.freebies.include? freebie
            freebie.dev_id = dev.id
            self.freebies = self.freebies.select {|freeb| freeb.id != freebie.id}
        end
    end
end
