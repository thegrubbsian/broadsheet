Broadsheet::Engine.routes.draw do

  get "*url", to: "pages#show"

end
