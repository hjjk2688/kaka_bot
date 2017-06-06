class HomeController < ApplicationController
  def keyboard
  keyboard = {"type" => "buttons",  "buttons" => ["주사위", "야구게임", "선택 3"]}
  #keyboard = {"type" => "text"}
  render json: keyboard
  
  end
 
 def message
  # user_message = params[:content]
  # case user_message
   #   when "주사위"
#        return_msg = [rand(1..6),rand(1..6),rand(1..6),rand(1..6),rand(1..6),rand(1..6)]
 #     else
  #      return_msg = "http://cfile22.uf.tistory.com/image/23390C4752A91485368E42"
  # end
   
  #keyboard_message = {"type" => "buttons",  "buttons" => ["주사위", "선택 2", "선택 3"]} #기본이 키보드 인데 메시지를 입력후 나오는 키도는 모양  설정
  #message = {    "message"=>{ "text" => "#{return_msg}"  }, "keyboard"=> keyboard_message}
  #message = {"photo"=> {      "url": "#{return_msg}",      "width": 640,      "height": 480    }}
  
  #render json: message
  
  user_message = params[:content]
    case user_message
      when "주사위"
        return_msg = rand(1..6)
      when "야구게임"
        return_msg = "야구게임"
   end
 end
  
  
end
