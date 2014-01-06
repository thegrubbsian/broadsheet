module Broadsheet
  class Resolver < ActionView::Resolver

    def find_templates(name, prefix, is_partial, details)
      if is_partial
        find_partial(name.parameterize)
      else
        find_view(name)
      end
    end

    def find_partial(slug)
      partials = [Broadsheet::Partial.find_by(slug: slug)].compact
      partials.map do |partial|
        initialize_template(partial, true)
      end
    end

    def find_view(url)
      views = [Broadsheet::View.find_by(url: url)].compact
      views.map do |view|
        initialize_template(view, false)
      end
    end

    def initialize_template(view, is_partial)
      identifier = "#{view.class}-#{view.id}"
      handler = ActionView::Template.registered_template_handler(view.format)
      details = {
        format: Mime[view.format],
        updated_at: view.updated_at,
        virtual_path: view.path
      }
      ActionView::Template.new(view.markup, identifier, handler, details)
    end

  end
end
