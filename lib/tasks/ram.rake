namespace :pick do
	task :user => :environment  do 
	  desc "hi this is user name"
	  puts "hi hello #{pick(User).name}"	
	end

	task :winner => :environment  do 
	  desc "hi this is winner name"
	  puts "hi welcome #{pick(Winner).prize}"	
	end
    
    desc "hi this is all name and prize"
	task :all => [ :user , :winner]

	def pick(model_name)
		model_name.find(:first , :order => "RAND()")
    end
end
