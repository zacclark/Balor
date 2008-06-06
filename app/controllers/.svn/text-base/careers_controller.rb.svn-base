class CareersController < ApplicationController
  before_filter :load_character
  # GET /careers
  # GET /careers.xml
  def index
    #@careers = Career.find(:all)
    @careers = @character.careers.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @careers }
    end
  end

  # GET /careers/1
  # GET /careers/1.xml
  def show
    #@career = Career.find(params[:id])
    @career = @character.careers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @career }
    end
  end

  # GET /careers/new
  # GET /careers/new.xml
  def new
    #@career = Career.new
    @career = @character.careers.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @career }
    end
  end

  # GET /careers/1/edit
  def edit
    @career = Career.find(params[:id])
  end

  # POST /careers
  # POST /careers.xml
  def create
    @career = Career.new(params[:career])

    respond_to do |format|
      if @career.save
        flash[:notice] = 'Career was successfully created.'
        format.html { redirect_to(edit_character_path(@character)) }
        format.xml  { render :xml => @career, :status => :created, :location => @career }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @career.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /careers/1
  # PUT /careers/1.xml
  def update
    @career = Career.find(params[:id])

    respond_to do |format|
      if @career.update_attributes(params[:career])
        flash[:notice] = 'Career was successfully updated.'
        format.html { redirect_to(edit_character_path(@character)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @career.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /careers/1
  # DELETE /careers/1.xml
  def destroy
    @career = Career.find(params[:id])
    @career.destroy

    respond_to do |format|
      format.html { redirect_to(edit_character_url(@character)) }
      format.xml  { head :ok }
    end
  end
  
  def load_character
    @character = Character.find(params[:character_id])
  end
end
