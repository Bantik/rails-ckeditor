class CkeditorMigrationGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      create_models(m)
    end
  end

  protected
    
    def create_models(m)
      m.directory(File.join('app', 'models', ckeditor_dir))
      
      m.template "models/paperclip/asset.rb",
               File.join('app/models', ckeditor_dir, "asset.rb")
      
      m.template "models/paperclip/picture.rb",
               File.join('app/models', ckeditor_dir, "picture.rb")
      
      m.template "models/paperclip/attachment_file.rb",
               File.join('app/models', ckeditor_dir, "attachment_file.rb")
    end
    
    def ckeditor_dir
      'ckeditor'
    end
    
end
