class FeatsController < ApplicationController
  before_filter :load_character
  # GET /feats
  # GET /feats.xml
  def index
    #@feats = Feat.find(:all)
    @feats = @character.feats.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feats }
    end
  end

  # GET /feats/1
  # GET /feats/1.xml
  def show
    #@feat = Feat.find(params[:id])
    @feat = @character.feats.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feat }
    end
  end

  # GET /feats/new
  # GET /feats/new.xml
  def new
    #@feat = Feat.new
    @feat = @character.feats.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feat }
    end
  end

  # GET /feats/1/edit
  def edit
    #@feat = Feat.find(params[:id])
    @feat = @character.feats.find(params[:id])
  end

  # POST /feats
  # POST /feats.xml
  def create
    #@feat = Feat.new(params[:feat])
    @feat = @character.feats.build(params[:feat])

    respond_to do |format|
      if @feat.save
        flash[:notice] = 'Feat was successfully created.'
        format.html { redirect_to(edit_character_path(@character)) }
        format.xml  { render :xml => @feat, :status => :created, :location => @feat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feats/1
  # PUT /feats/1.xml
  def update
    #@feat = Feat.find(params[:id])
    @feat = @character.feats.find(params[:id])

    respond_to do |format|
      if @feat.update_attributes(params[:feat])
        flash[:notice] = 'Feat was successfully updated.'
        format.html { redirect_to(edit_character_path(@character)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feats/1
  # DELETE /feats/1.xml
  def destroy
    #@feat = Feat.find(params[:id])
    @feat = @character.feats.find(params[:id])
    @feat.destroy

    respond_to do |format|
      format.html { redirect_to(edit_character_path(@character)) }
      format.xml  { head :ok }
    end
  end
  
  def load_character
    @character = Character.find(params[:character_id])
  end
end
