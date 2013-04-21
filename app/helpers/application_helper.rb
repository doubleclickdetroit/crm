module ApplicationHelper
    def company_name(entity)
        entity.company.name or ""
    end
end
