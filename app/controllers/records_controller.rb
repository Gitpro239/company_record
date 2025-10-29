class RecordsController < ApplicationController

      before_action :authenticate_user!

     def index    
        @records = Record.all.page(params[:page])
     end
 
     def new
       @record = Record.new
     end
 
     def create
       @record = Record.create(records_params)
       if @record.save
         redirect_to records_path
       else
         render:new
       end
     end
     
     def show
      @record = Record.find(params[:id])
     end
     
     def edit
        @record = Record.find(params[:id])
      # @record = Record.find(params.expect(:id))

     end
 
     def update
         @record = Record.find(params[:id])
      if @record = Record.update(records_params)
         redirect_to records_path
       else
         render:new
       end
     end
     def destroy
      @record = Record.find(params[:id])
      @record.destroy
         redirect_to records_path
     end
       
     private 
 
     def records_params

         params.require(:record).permit(:company_name, :email_id, :company_code, :strength, :website)
        
         # params.expect(company_record: [:company_name, :email_id, :company_code, :strength, :website ])

     end
 
 end
 

