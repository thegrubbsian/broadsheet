module Broadsheet
  class PagesController < Broadsheet::ApplicationController
    prepend_view_path Broadsheet::ActionView::Resolver.resolver

    def show
      page = Page.find_by(url: params[:url])
      render template: page.slug, layout: page.layout
    end

  end
end
