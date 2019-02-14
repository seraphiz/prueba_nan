class ConcluidosController < ApplicationController
    def index
        @tarea_concluida = current_user.concluidos
    end 

    def create
        concluido = Concluido.new(
            user_id: current_user.id,
            tarea_id: params[:tarea_id],
            completed: true
        )
        concluido.save
        redirect_to root_path, notice: 'Wena OE Tiki Tiki Ti!'
    end 

    #def concluido_update
    #     @concluido = Concluido.find(params[:concluido_id])
    #       @concluido.completed = false
    #       @concluido.save
    #       redirect_to root_path, notice: 'No completado!'
    # end 
end
