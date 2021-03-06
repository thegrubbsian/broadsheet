class InitialMigration < ActiveRecord::Migration

  def change
    create_table :broadsheet_assets do |t|
      t.string :name
      t.string :uuid
      t.string :asset_type # image, video, pdf, download
      t.string :file
      t.timestamps
    end

    create_table :broadsheet_stylesheets do |t|
      t.string :name
      t.text :styles
      t.timestamps
    end

    create_table :broadsheet_layoutss_broadsheet_stylesheets do |t|
      t.integer :broadsheet_stylesheet_id
      t.integer :broadsheet_layout_id
      t.timestamps
    end

    create_table :broadsheet_layouts do |t|
      t.string :name
      t.text :markup
      t.string :format
      t.timestamps
    end

    create_table :broadsheet_partials do |t|
      t.string :name
      t.string :slug
      t.text :markup
      t.string :format
      t.timestamps
    end

    create_table :broadsheet_views do |t|
      t.string :name
      t.string :slug
      t.string :url
      t.text :markup
      t.integer :layout_id
      t.string :format
      t.timestamps
    end

    add_index :broadsheet_views, :url, unique: true

    create_table :broadsheet_authors do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end

    create_table :broadsheet_authors_broadsheet_posts do |t|
      t.integer :broadsheet_post_id
      t.integer :broadsheet_author_id
      t.timestamps
    end

    create_table :broadsheet_tags do |t|
      t.string :name
      t.string :slug
      t.timestamps
    end

    create_table :broadsheet_categories do |t|
      t.string :name
      t.string :slug
      t.timestamps
    end

    create_table :broadsheet_categories_broadsheet_posts do |t|
      t.integer :broadsheet_category_id
      t.integer :broadsheet_post_id
      t.timestamps
    end

    create_table :broadsheet_posts do |t|
      t.string :title
      t.string :slug
      t.datetime :publish_at
      t.text :body
      t.string :format
      t.timestamps
    end

    create_table :broadsheet_posts_broadsheet_tags do |t|
      t.integer :broadsheet_post_id
      t.integer :broadsheet_tag_id
      t.timestamps
    end
  end

end
