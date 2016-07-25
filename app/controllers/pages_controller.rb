class PagesController < ApplicationController
  expose :articles, ->{ Article.all }

end
