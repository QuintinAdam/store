class Admin::SeoController < Admin::BaseController

  def index
    @metatags = MetaTag.all
  end

  def edit
    @seo = MetaTag.find(params[:id])
    respond_to do |format|
      format.html
      format.xml
      format.js
    end
  end

  def update
    @seo = MetaTag.find(params[:id])
    if @seo.update_attributes(seo_params)
      respond_to do |format|
        format.html
        format.xml
        format.js
      end
     else
      @errors = true
      render :edit
    end

  end

  private

  def seo_params
    params.require(:meta_tag).permit(:tag_type, :name, :content, :page_lookup)
  end
end

