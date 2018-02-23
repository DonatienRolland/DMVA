ActiveAdmin.register Article do

  permit_params :titre, :description, :genre, :photo, :category, :user



# permit_params :list, :of, :attributes, :on, :model
  form do |f|
    f.inputs "Creer un article" do
      f.input :user, label:"Auteur"
      f.input :titre, label:"Nom"
      f.input :genre, :collection => ['Documentation', 'Image', 'Vidéo'], label: "Type d'Arctile"
      f.input :category, :collection => ['Maçonnerie', 'Voirie', 'Assainissement', 'Autre'], label: "Categorie"
      f.input :description
      f.input :photo
    end
    f.actions
  end

  index do
    selectable_column
    column :user
    column :titre
    column :genre
    column :category
    column :photo
    column :created_at
    actions
  end


end

