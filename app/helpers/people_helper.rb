module PeopleHelper
    def name_and_description(person)
        if person.description?
            person.name + " (" + person.description + ")"
        else
            person.name
        end
    end
end
