task :default => :tu

desc "Pruebas unitarias para numeros complejos"
task :tu do
	sh "ruby -l -I. test/tc_numeros_c.rb"
end

desc "Test initializer"
task :ti do
	sh "ruby -l -I. test/tc_numeros_c.rb -n /test_ini/"
end

desc "Test suma"
task :ts do
	sh "ruby -l -I. test/tc_numeros_c.rb -n /test_suma/"
end

desc "Test Resta"
task :tr do
	sh "ruby -l -I. test/tc_numeros_c.rb -n /test_resta/"
end

desc "Test Multiplicacion"
task :tm do
	sh "ruby -l -I. test/tc_numeros_c.rb -n /test_multiplicacion/"
end

desc "Test Division"
task :td do
	sh "ruby -l -I. test/tc_numeros_c.rb -n /test_division/"
end

desc "Test escalar"
task :te do 
	sh "ruby -l -I. test/tc_numeros_c.rb -n /test_escalar/"
end




