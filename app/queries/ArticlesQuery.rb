module Article
  class ArticlesQuery

    def initialize(relation)
      @relation = relation
    end

    def three_admin_posts
      @relation.where(user_id: 1).limit(3)
    end
  end
end
