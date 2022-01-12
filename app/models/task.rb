class Task < ApplicationRecord
    validates :title, presence: true
    validates :memo, presence: true
    validates :start, presence: true
    validates :end, presence: true
    
    #開始日と終了日の逆転防止
    validate :start_end_check
    def start_end_check
        if self.start == nil || self.end == nil
        elsif self.start < self.end
        else
            errors.add(:end, "の日付を開始日より後に設定してくだいさい。") 
        end
    end

end
