class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  before_action :set_count_visit

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      # binding.pry
      unless params[:term].nil? || params[:term].empty?
        @products = Product.where("title like ? OR description like ?", "%" + params[:term] + "%", "%" + params[:term] + "%")
          .paginate(:page => params[:page], :per_page => 3)
          .order("id desc")
      else
        @products = Product.paginate(:page => params[:page], :per_page => 3).order("id desc")
      end
    end
  end
end
