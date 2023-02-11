extends Node2D
var socket = PacketPeerUDP.new()
var joueurs = []

func _ready():
	if(socket.listen(5454) != OK):
		print("erreur listening")
	else :
		print("ecoute du port 5454 sur localhost")



func _process(delta):
	if(socket.get_available_packet_count() > 0):
		var data = socket.get_packet().get_string_from_ascii();
		var ip = socket.get_packet_ip()
		if joueurs.has(ip) == false and joueurs.size() < 2 :
			joueurs.push_back(ip)
			print(joueurs.size())
			print(data)
		#$Label.text += data +"\n"
		#socket.get_packet_ip() sert toi en pour multi manettes avec tableau de peers
		
		if joueurs.size() != null:
		#remote movements
			if data == "d" or data  == "dd":
					$Ninja_frog.set_frog_dir(1)
					
			if data == "g" or data  == "gg":
					$Ninja_frog.set_frog_dir(-1)

			if data == "s" or data  == "ss":
					$Ninja_frog.set_frog_dir(0)
			
			if data == "j" or data  == "jj":
					$Ninja_frog.sig_jump =  true
			
			if data == "t" or data  == "tt":
					$Ninja_frog.shoot()
			
			if data == "e" or data  == "ee":
					$Ninja_frog/particles.emitting = true
			
			if data ==  "c" or data  == "cc" :
				$Ninja_frog.set_shader_color()

func  spawn_player(id,name):
	#his id = ip of the device
	#make it appear
	#receiving his nickname an setting his label to it
	pass
