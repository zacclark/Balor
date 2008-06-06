class SkillsController < ApplicationController
  before_filter :load_character
  # GET /skills
  # GET /skills.xml
  def index
    #@skills = Skill.find(:all)
    @skills = @character.skills.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skills }
    end
  end

  # GET /skills/1
  # GET /skills/1.xml
  def show
    #@skill = Skill.find(params[:id])
    @skill = @character.skills.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill }
    end
  end

  # GET /skills/new
  # GET /skills/new.xml
  def new
    #@skill = Skill.new
    @skill = @character.skills.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill }
    end
  end

  # GET /skills/1/edit
  def edit
    #@skill = Skill.find(params[:id])
    @skill = @character.skills.find(params[:id])
  end

  # POST /skills
  # POST /skills.xml
  def create
    #@skill = Skill.new(params[:skill])
    @skill = @character.skills.build(params[:skill])

    respond_to do |format|
      if @skill.save
        flash[:notice] = 'Skill was successfully created.'
        format.html { redirect_to(edit_character_path(@character)) }
        format.xml  { render :xml => @skill, :status => :created, :location => @skill }
        format.js   {
          render :update do |page|
            params[:action] = 'edit'
            page.insert_html :bottom, 'rawr', :partial => 'skill'
          end }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skills/1
  # PUT /skills/1.xml
  def update
    #@skill = Skill.find(params[:id])
    @skill = @character.skills.find(params[:id])

    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        flash[:notice] = 'Skill was successfully updated.'
        format.html { redirect_to(edit_character_path(@character)) }
        format.xml  { head :ok }
        format.js   {
          render :update do |page|
            page.replace_html "skill_" + @skill.id.to_s + "_ranks", @skill.rank.to_s + " ranks, " + @skill.base_stat.to_s
          end }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.xml
  def destroy
    #@skill = Skill.find(params[:id])
    @skill = @character.skills.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to(edit_character_path(@character)) }
      format.xml  { head :ok }
    end
  end
  
  def increase
    
  end
  
  def load_character
    @character = Character.find(params[:character_id])
  end
end
