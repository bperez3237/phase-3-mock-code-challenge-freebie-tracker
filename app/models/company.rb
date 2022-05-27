class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebies(dev, item_name, value)
        Freebie.create(item_name: item_name, value: value, dev_id: dev.id, company_id: self.id)
    end

    def self.oldest_company
        Company.where("founding_year = ?", Company.minimum(:founding_year)).first
    end
end
