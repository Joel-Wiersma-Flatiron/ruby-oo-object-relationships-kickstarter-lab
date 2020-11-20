class Project
    attr_accessor :title
    def initialize(title)
        self.title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def project_backers
        ProjectBacker.all.select {|project_backer| project_backer.project == self}
    end

    def backers
        project_backers.map {|project_backer| project_backer.backer}
    end
end