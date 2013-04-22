module ApplicationHelper
    def company_name(entity)
        if entity.company then entity.company.name else "" end
    end
end
