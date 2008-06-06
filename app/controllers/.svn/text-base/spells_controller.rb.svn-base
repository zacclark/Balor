class SpellsController < ApplicationController
  before_filter :load_character
  # GET /spells
  # GET /spells.xml
  def index
    #@spells = Spell.find(:all)
    @spells = @character.spells.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spells }
    end
  end

  # GET /spells/1
  # GET /spells/1.xml
  def show
    #@spell = Spell.find(params[:id])
    @spell = @character.spells.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spell }
    end
  end

  # GET /spells/new
  # GET /spells/new.xml
  def new
    #@spell = Spell.new
    @spell = @character.spells.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spell }
    end
  end

  # GET /spells/1/edit
  def edit
    #@spell = Spell.find(params[:id])
    @spell = @character.spells.find(params[:id])
  end

  # POST /spells
  # POST /spells.xml
  def create
    #@spell = Spell.new(params[:spell])
    @spell = @character.spells.build(params[:spell])

    respond_to do |format|
      if @spell.save
        flash[:notice] = 'Spell was successfully created.'
        format.html { redirect_to(edit_character_path(@character)) }
        format.xml  { render :xml => @spell, :status => :created, :location => @spell }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spell.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spells/1
  # PUT /spells/1.xml
  def update
    #@spell = Spell.find(params[:id])
    @spell = @character.spells.find(params[:id])

    respond_to do |format|
      if @spell.update_attributes(params[:spell])
        flash[:notice] = 'Spell was successfully updated.'
        format.html { redirect_to(@spell) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spell.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spells/1
  # DELETE /spells/1.xml
  def destroy
    #@spell = Spell.find(params[:id])
    @spell = @character.spells.find(params[:id])
    @spell.destroy

    respond_to do |format|
      format.html { redirect_to(edit_character_path(@character)) }
      format.xml  { head :ok }
    end
  end
  
  def load_character
    @character = Character.find(params[:character_id])
  end
end
