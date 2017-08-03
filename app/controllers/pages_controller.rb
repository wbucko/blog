class PagesController < ApplicationController
  expose :articles, ->{ Article::ArticlesQuery.new(Article.all.three_admin_posts) }

end
