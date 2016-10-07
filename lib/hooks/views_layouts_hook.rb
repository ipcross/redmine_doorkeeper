# -*- encoding : utf-8 -*-
  module Hooks
    class ViewsLayoutsHook < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        return stylesheet_link_tag(:application, :plugin => 'redmine_doorkeeper')
      end
    end
  end
